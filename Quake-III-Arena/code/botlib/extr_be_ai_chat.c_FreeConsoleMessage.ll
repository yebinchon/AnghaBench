; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_FreeConsoleMessage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_FreeConsoleMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@freeconsolemessages = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeConsoleMessage(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @freeconsolemessages, align 8
  %4 = icmp ne %struct.TYPE_4__* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @freeconsolemessages, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %8, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @freeconsolemessages, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** @freeconsolemessages, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
