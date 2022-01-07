; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipe_select.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipe_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { i64 }
%struct.pipe = type { i32, i32, %struct.TYPE_2__, %struct.pipe* }
%struct.TYPE_2__ = type { i64 }

@PIPE_DIRECTW = common dso_local global i32 0, align 4
@PIPE_DRAIN = common dso_local global i32 0, align 4
@PIPE_EOF = common dso_local global i32 0, align 4
@PIPE_SEL = common dso_local global i32 0, align 4
@PIPE_WSELECT = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fileproc*, i32, i8*, i32)* @pipe_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_select(%struct.fileproc* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileproc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pipe*, align 8
  %11 = alloca %struct.pipe*, align 8
  %12 = alloca i32, align 4
  store %struct.fileproc* %0, %struct.fileproc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %14 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.pipe*
  store %struct.pipe* %16, %struct.pipe** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.pipe*, %struct.pipe** %10, align 8
  %18 = icmp eq %struct.pipe* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load %struct.pipe*, %struct.pipe** %10, align 8
  %21 = icmp eq %struct.pipe* %20, inttoptr (i64 -1 to %struct.pipe*)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %135

24:                                               ; preds = %19
  %25 = load %struct.pipe*, %struct.pipe** %10, align 8
  %26 = call i32 @PIPE_LOCK(%struct.pipe* %25)
  %27 = load %struct.pipe*, %struct.pipe** %10, align 8
  %28 = getelementptr inbounds %struct.pipe, %struct.pipe* %27, i32 0, i32 3
  %29 = load %struct.pipe*, %struct.pipe** %28, align 8
  store %struct.pipe* %29, %struct.pipe** %11, align 8
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %131 [
    i32 129, label %31
    i32 128, label %67
    i32 0, label %119
  ]

31:                                               ; preds = %24
  %32 = load %struct.pipe*, %struct.pipe** %10, align 8
  %33 = getelementptr inbounds %struct.pipe, %struct.pipe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PIPE_DIRECTW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %31
  %39 = load %struct.pipe*, %struct.pipe** %10, align 8
  %40 = getelementptr inbounds %struct.pipe, %struct.pipe* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = load %struct.pipe*, %struct.pipe** %10, align 8
  %46 = getelementptr inbounds %struct.pipe, %struct.pipe* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PIPE_DRAIN, align 4
  %49 = load i32, i32* @PIPE_EOF, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44, %38, %31
  store i32 1, i32* %12, align 4
  br label %66

54:                                               ; preds = %44
  %55 = load i32, i32* @PIPE_SEL, align 4
  %56 = load %struct.pipe*, %struct.pipe** %10, align 8
  %57 = getelementptr inbounds %struct.pipe, %struct.pipe* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @vfs_context_proc(i32 %60)
  %62 = load %struct.pipe*, %struct.pipe** %10, align 8
  %63 = getelementptr inbounds %struct.pipe, %struct.pipe* %62, i32 0, i32 1
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @selrecord(i32 %61, i32* %63, i8* %64)
  br label %66

66:                                               ; preds = %54, %53
  br label %131

67:                                               ; preds = %24
  %68 = load %struct.pipe*, %struct.pipe** %11, align 8
  %69 = icmp ne %struct.pipe* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* @PIPE_WSELECT, align 4
  %72 = load %struct.pipe*, %struct.pipe** %11, align 8
  %73 = getelementptr inbounds %struct.pipe, %struct.pipe* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %67
  %77 = load %struct.pipe*, %struct.pipe** %11, align 8
  %78 = icmp eq %struct.pipe* %77, null
  br i1 %78, label %105, label %79

79:                                               ; preds = %76
  %80 = load %struct.pipe*, %struct.pipe** %11, align 8
  %81 = getelementptr inbounds %struct.pipe, %struct.pipe* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PIPE_DRAIN, align 4
  %84 = load i32, i32* @PIPE_EOF, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %79
  %89 = load %struct.pipe*, %struct.pipe** %11, align 8
  %90 = getelementptr inbounds %struct.pipe, %struct.pipe* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PIPE_DIRECTW, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %88
  %96 = load %struct.pipe*, %struct.pipe** %11, align 8
  %97 = call i64 @MAX_PIPESIZE(%struct.pipe* %96)
  %98 = load %struct.pipe*, %struct.pipe** %11, align 8
  %99 = getelementptr inbounds %struct.pipe, %struct.pipe* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %97, %101
  %103 = load i64, i64* @PIPE_BUF, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %95, %79, %76
  store i32 1, i32* %12, align 4
  br label %118

106:                                              ; preds = %95, %88
  %107 = load i32, i32* @PIPE_SEL, align 4
  %108 = load %struct.pipe*, %struct.pipe** %11, align 8
  %109 = getelementptr inbounds %struct.pipe, %struct.pipe* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @vfs_context_proc(i32 %112)
  %114 = load %struct.pipe*, %struct.pipe** %11, align 8
  %115 = getelementptr inbounds %struct.pipe, %struct.pipe* %114, i32 0, i32 1
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @selrecord(i32 %113, i32* %115, i8* %116)
  br label %118

118:                                              ; preds = %106, %105
  br label %131

119:                                              ; preds = %24
  %120 = load i32, i32* @PIPE_SEL, align 4
  %121 = load %struct.pipe*, %struct.pipe** %10, align 8
  %122 = getelementptr inbounds %struct.pipe, %struct.pipe* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @vfs_context_proc(i32 %125)
  %127 = load %struct.pipe*, %struct.pipe** %10, align 8
  %128 = getelementptr inbounds %struct.pipe, %struct.pipe* %127, i32 0, i32 1
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @selrecord(i32 %126, i32* %128, i8* %129)
  br label %131

131:                                              ; preds = %24, %119, %118, %66
  %132 = load %struct.pipe*, %struct.pipe** %10, align 8
  %133 = call i32 @PIPE_UNLOCK(%struct.pipe* %132)
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %22
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @selrecord(i32, i32*, i8*) #1

declare dso_local i32 @vfs_context_proc(i32) #1

declare dso_local i64 @MAX_PIPESIZE(%struct.pipe*) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
