; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_socket.c_soo_select.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_socket.c_soo_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.socket = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@SB_SEL = common dso_local global i32 0, align 4
@SS_RCVATMARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soo_select(%struct.fileproc* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileproc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fileproc* %0, %struct.fileproc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %14 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.socket*
  store %struct.socket* %18, %struct.socket** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.socket*, %struct.socket** %10, align 8
  %20 = icmp eq %struct.socket* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load %struct.socket*, %struct.socket** %10, align 8
  %23 = icmp eq %struct.socket* %22, inttoptr (i64 -1 to %struct.socket*)
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %119

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @vfs_context_proc(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.socket*, %struct.socket** %10, align 8
  %29 = call i32 @socket_lock(%struct.socket* %28, i32 1)
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %114 [
    i32 129, label %31
    i32 128, label %56
    i32 0, label %81
  ]

31:                                               ; preds = %25
  %32 = load i32, i32* @SB_SEL, align 4
  %33 = load %struct.socket*, %struct.socket** %10, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 4
  %38 = load %struct.socket*, %struct.socket** %10, align 8
  %39 = call i32 @soreadable(%struct.socket* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  store i32 1, i32* %11, align 4
  %42 = load i32, i32* @SB_SEL, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.socket*, %struct.socket** %10, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 4
  br label %115

49:                                               ; preds = %31
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.socket*, %struct.socket** %10, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @selrecord(i32 %50, i32* %53, i8* %54)
  br label %114

56:                                               ; preds = %25
  %57 = load i32, i32* @SB_SEL, align 4
  %58 = load %struct.socket*, %struct.socket** %10, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load %struct.socket*, %struct.socket** %10, align 8
  %64 = call i32 @sowriteable(%struct.socket* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  store i32 1, i32* %11, align 4
  %67 = load i32, i32* @SB_SEL, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.socket*, %struct.socket** %10, align 8
  %70 = getelementptr inbounds %struct.socket, %struct.socket* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %68
  store i32 %73, i32* %71, align 4
  br label %115

74:                                               ; preds = %56
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.socket*, %struct.socket** %10, align 8
  %77 = getelementptr inbounds %struct.socket, %struct.socket* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @selrecord(i32 %75, i32* %78, i8* %79)
  br label %114

81:                                               ; preds = %25
  %82 = load i32, i32* @SB_SEL, align 4
  %83 = load %struct.socket*, %struct.socket** %10, align 8
  %84 = getelementptr inbounds %struct.socket, %struct.socket* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 4
  %88 = load %struct.socket*, %struct.socket** %10, align 8
  %89 = getelementptr inbounds %struct.socket, %struct.socket* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %81
  %93 = load %struct.socket*, %struct.socket** %10, align 8
  %94 = getelementptr inbounds %struct.socket, %struct.socket* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SS_RCVATMARK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %92, %81
  store i32 1, i32* %11, align 4
  %100 = load i32, i32* @SB_SEL, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.socket*, %struct.socket** %10, align 8
  %103 = getelementptr inbounds %struct.socket, %struct.socket* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %101
  store i32 %106, i32* %104, align 4
  br label %115

107:                                              ; preds = %92
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.socket*, %struct.socket** %10, align 8
  %110 = getelementptr inbounds %struct.socket, %struct.socket* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @selrecord(i32 %108, i32* %111, i8* %112)
  br label %114

114:                                              ; preds = %25, %107, %74, %49
  br label %115

115:                                              ; preds = %114, %99, %66, %41
  %116 = load %struct.socket*, %struct.socket** %10, align 8
  %117 = call i32 @socket_unlock(%struct.socket* %116, i32 1)
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %24
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @vfs_context_proc(i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @soreadable(%struct.socket*) #1

declare dso_local i32 @selrecord(i32, i32*, i8*) #1

declare dso_local i32 @sowriteable(%struct.socket*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
