; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_enode.c_andtree.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_enode.c_andtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@inttype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32, %struct.TYPE_9__*, %struct.TYPE_9__*)* @andtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @andtree(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @isscalar(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @isscalar(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12, %3
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = call i32 @typeerror(i32 %19, %struct.TYPE_9__* %20, %struct.TYPE_9__* %21)
  br label %23

23:                                               ; preds = %18, %12
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @inttype, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = call i32 @cond(%struct.TYPE_9__* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = call i32 @cond(%struct.TYPE_9__* %28)
  %30 = call %struct.TYPE_9__* @simplify(i32 %24, i32 %25, i32 %27, i32 %29)
  ret %struct.TYPE_9__* %30
}

declare dso_local i32 @isscalar(i32) #1

declare dso_local i32 @typeerror(i32, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @simplify(i32, i32, i32, i32) #1

declare dso_local i32 @cond(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
