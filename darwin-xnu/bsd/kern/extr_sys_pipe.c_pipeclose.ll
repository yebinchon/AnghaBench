; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipeclose.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipeclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe = type { i32, %struct.pipe*, %struct.TYPE_2__, i32*, i64 }
%struct.TYPE_2__ = type { i32 }

@PIPE_DRAIN = common dso_local global i32 0, align 4
@PIPE_EOF = common dso_local global i32 0, align 4
@PIPE_WANT = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pipecl\00", align 1
@PIPE_KNOTE = common dso_local global i32 0, align 4
@EV_RCLOSED = common dso_local global i32 0, align 4
@pipe_mtx_grp = common dso_local global i32 0, align 4
@PIPE_WSELECT = common dso_local global i32 0, align 4
@pipe_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe*)* @pipeclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipeclose(%struct.pipe* %0) #0 {
  %2 = alloca %struct.pipe*, align 8
  %3 = alloca %struct.pipe*, align 8
  store %struct.pipe* %0, %struct.pipe** %2, align 8
  %4 = load %struct.pipe*, %struct.pipe** %2, align 8
  %5 = icmp eq %struct.pipe* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %123

7:                                                ; preds = %1
  %8 = load %struct.pipe*, %struct.pipe** %2, align 8
  %9 = call i32* @PIPE_MTX(%struct.pipe* %8)
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load %struct.pipe*, %struct.pipe** %2, align 8
  %13 = call i32 @PIPE_LOCK(%struct.pipe* %12)
  br label %14

14:                                               ; preds = %11, %7
  %15 = load i32, i32* @PIPE_DRAIN, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.pipe*, %struct.pipe** %2, align 8
  %18 = getelementptr inbounds %struct.pipe, %struct.pipe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* @PIPE_EOF, align 4
  %22 = load %struct.pipe*, %struct.pipe** %2, align 8
  %23 = getelementptr inbounds %struct.pipe, %struct.pipe* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.pipe*, %struct.pipe** %2, align 8
  %27 = load %struct.pipe*, %struct.pipe** %2, align 8
  %28 = call i32 @pipeselwakeup(%struct.pipe* %26, %struct.pipe* %27)
  br label %29

29:                                               ; preds = %34, %14
  %30 = load %struct.pipe*, %struct.pipe** %2, align 8
  %31 = getelementptr inbounds %struct.pipe, %struct.pipe* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i32, i32* @PIPE_WANT, align 4
  %36 = load %struct.pipe*, %struct.pipe** %2, align 8
  %37 = getelementptr inbounds %struct.pipe, %struct.pipe* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.pipe*, %struct.pipe** %2, align 8
  %41 = call i32 @wakeup(%struct.pipe* %40)
  %42 = load %struct.pipe*, %struct.pipe** %2, align 8
  %43 = load %struct.pipe*, %struct.pipe** %2, align 8
  %44 = call i32* @PIPE_MTX(%struct.pipe* %43)
  %45 = load i32, i32* @PRIBIO, align 4
  %46 = call i32 @msleep(%struct.pipe* %42, i32* %44, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %29

47:                                               ; preds = %29
  %48 = load %struct.pipe*, %struct.pipe** %2, align 8
  %49 = getelementptr inbounds %struct.pipe, %struct.pipe* %48, i32 0, i32 1
  %50 = load %struct.pipe*, %struct.pipe** %49, align 8
  store %struct.pipe* %50, %struct.pipe** %3, align 8
  %51 = icmp ne %struct.pipe* %50, null
  br i1 %51, label %52, label %86

52:                                               ; preds = %47
  %53 = load i32, i32* @PIPE_DRAIN, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.pipe*, %struct.pipe** %3, align 8
  %56 = getelementptr inbounds %struct.pipe, %struct.pipe* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* @PIPE_EOF, align 4
  %60 = load %struct.pipe*, %struct.pipe** %3, align 8
  %61 = getelementptr inbounds %struct.pipe, %struct.pipe* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.pipe*, %struct.pipe** %3, align 8
  %65 = load %struct.pipe*, %struct.pipe** %3, align 8
  %66 = call i32 @pipeselwakeup(%struct.pipe* %64, %struct.pipe* %65)
  %67 = load %struct.pipe*, %struct.pipe** %3, align 8
  %68 = call i32 @wakeup(%struct.pipe* %67)
  %69 = load %struct.pipe*, %struct.pipe** %2, align 8
  %70 = getelementptr inbounds %struct.pipe, %struct.pipe* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PIPE_KNOTE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %52
  %76 = load %struct.pipe*, %struct.pipe** %3, align 8
  %77 = getelementptr inbounds %struct.pipe, %struct.pipe* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @KNOTE(i32* %78, i32 1)
  br label %80

80:                                               ; preds = %75, %52
  %81 = load %struct.pipe*, %struct.pipe** %3, align 8
  %82 = load i32, i32* @EV_RCLOSED, align 4
  %83 = call i32 @postpipeevent(%struct.pipe* %81, i32 %82)
  %84 = load %struct.pipe*, %struct.pipe** %3, align 8
  %85 = getelementptr inbounds %struct.pipe, %struct.pipe* %84, i32 0, i32 1
  store %struct.pipe* null, %struct.pipe** %85, align 8
  br label %86

86:                                               ; preds = %80, %47
  %87 = load %struct.pipe*, %struct.pipe** %2, align 8
  %88 = call i32 @evpipefree(%struct.pipe* %87)
  %89 = load %struct.pipe*, %struct.pipe** %2, align 8
  %90 = call i32* @PIPE_MTX(%struct.pipe* %89)
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = load %struct.pipe*, %struct.pipe** %3, align 8
  %94 = icmp ne %struct.pipe* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.pipe*, %struct.pipe** %2, align 8
  %97 = call i32 @PIPE_UNLOCK(%struct.pipe* %96)
  br label %105

98:                                               ; preds = %92
  %99 = load %struct.pipe*, %struct.pipe** %2, align 8
  %100 = call i32 @PIPE_UNLOCK(%struct.pipe* %99)
  %101 = load %struct.pipe*, %struct.pipe** %2, align 8
  %102 = call i32* @PIPE_MTX(%struct.pipe* %101)
  %103 = load i32, i32* @pipe_mtx_grp, align 4
  %104 = call i32 @lck_mtx_free(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %95
  br label %106

106:                                              ; preds = %105, %86
  %107 = load %struct.pipe*, %struct.pipe** %2, align 8
  %108 = call i32 @pipe_free_kmem(%struct.pipe* %107)
  %109 = load %struct.pipe*, %struct.pipe** %2, align 8
  %110 = getelementptr inbounds %struct.pipe, %struct.pipe* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @PIPE_WSELECT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load %struct.pipe*, %struct.pipe** %2, align 8
  %117 = call i32 @pipe_garbage_collect(%struct.pipe* %116)
  br label %123

118:                                              ; preds = %106
  %119 = load i32, i32* @pipe_zone, align 4
  %120 = load %struct.pipe*, %struct.pipe** %2, align 8
  %121 = call i32 @zfree(i32 %119, %struct.pipe* %120)
  %122 = call i32 @pipe_garbage_collect(%struct.pipe* null)
  br label %123

123:                                              ; preds = %6, %118, %115
  ret void
}

declare dso_local i32* @PIPE_MTX(%struct.pipe*) #1

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @pipeselwakeup(%struct.pipe*, %struct.pipe*) #1

declare dso_local i32 @wakeup(%struct.pipe*) #1

declare dso_local i32 @msleep(%struct.pipe*, i32*, i32, i8*, i32) #1

declare dso_local i32 @KNOTE(i32*, i32) #1

declare dso_local i32 @postpipeevent(%struct.pipe*, i32) #1

declare dso_local i32 @evpipefree(%struct.pipe*) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

declare dso_local i32 @lck_mtx_free(i32*, i32) #1

declare dso_local i32 @pipe_free_kmem(%struct.pipe*) #1

declare dso_local i32 @pipe_garbage_collect(%struct.pipe*) #1

declare dso_local i32 @zfree(i32, %struct.pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
