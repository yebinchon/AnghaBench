; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Object.c_NewRef.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Object.c_NewRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@KS_NEWREF_COUNT = common dso_local global i32 0, align 4
@KS_CURRENT_REF_COUNT = common dso_local global i32 0, align 4
@KS_ADDREF_COUNT = common dso_local global i32 0, align 4
@KS_CURRENT_REFED_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @NewRef() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = call %struct.TYPE_4__* @Malloc(i32 4)
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %1, align 8
  %3 = call i32 (...) @NewCounter()
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %3, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @Inc(i32 %8)
  %10 = load i32, i32* @KS_NEWREF_COUNT, align 4
  %11 = call i32 @KS_INC(i32 %10)
  %12 = load i32, i32* @KS_CURRENT_REF_COUNT, align 4
  %13 = call i32 @KS_INC(i32 %12)
  %14 = load i32, i32* @KS_ADDREF_COUNT, align 4
  %15 = call i32 @KS_INC(i32 %14)
  %16 = load i32, i32* @KS_CURRENT_REFED_COUNT, align 4
  %17 = call i32 @KS_INC(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %18
}

declare dso_local %struct.TYPE_4__* @Malloc(i32) #1

declare dso_local i32 @NewCounter(...) #1

declare dso_local i32 @Inc(i32) #1

declare dso_local i32 @KS_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
