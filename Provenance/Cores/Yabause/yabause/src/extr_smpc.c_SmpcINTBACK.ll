; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcINTBACK.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_smpc.c_SmpcINTBACK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SmpcRegs = common dso_local global %struct.TYPE_3__* null, align 8
@SmpcInternalVars = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SmpcINTBACK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SmpcINTBACK() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 1, i32* %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 (...) @SmpcINTBACKPeripheral()
  %9 = call i32 (...) @ScuSendSystemManager()
  br label %62

10:                                               ; preds = %0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = icmp ne i32 %16, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %10
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 1, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 8
  %29 = ashr i32 %28, 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = call i32 (...) @SmpcINTBACKStatus()
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 5
  %37 = or i32 79, %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = call i32 (...) @ScuSendSystemManager()
  br label %62

41:                                               ; preds = %10
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 1, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SmpcInternalVars, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i32 64, i32* %55, align 8
  %56 = call i32 (...) @SmpcINTBACKPeripheral()
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SmpcRegs, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 31
  store i32 16, i32* %60, align 4
  %61 = call i32 (...) @ScuSendSystemManager()
  br label %62

62:                                               ; preds = %7, %20, %49, %41
  ret void
}

declare dso_local i32 @SmpcINTBACKPeripheral(...) #1

declare dso_local i32 @ScuSendSystemManager(...) #1

declare dso_local i32 @SmpcINTBACKStatus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
