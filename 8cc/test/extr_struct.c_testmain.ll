; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_struct.c_testmain.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_struct.c_testmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"struct\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testmain() #0 {
  %1 = call i32 @print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @t1()
  %3 = call i32 (...) @t2()
  %4 = call i32 (...) @t3()
  %5 = call i32 (...) @t4()
  %6 = call i32 (...) @t5()
  %7 = call i32 (...) @t6()
  %8 = call i32 (...) @t7()
  %9 = call i32 (...) @t8()
  %10 = call i32 (...) @t9()
  %11 = call i32 (...) @t10()
  %12 = call i32 (...) @t11()
  %13 = call i32 (...) @t12()
  %14 = call i32 (...) @t13()
  %15 = call i32 (...) @t14()
  %16 = call i32 (...) @unnamed()
  %17 = call i32 (...) @assign()
  %18 = call i32 (...) @arrow()
  %19 = call i32 (...) @incomplete()
  %20 = call i32 (...) @bitfield_basic()
  %21 = call i32 (...) @bitfield_mix()
  %22 = call i32 (...) @bitfield_union()
  %23 = call i32 (...) @bitfield_unnamed()
  %24 = call i32 (...) @bitfield_initializer()
  %25 = call i32 (...) @test_offsetof()
  %26 = call i32 (...) @flexible_member()
  %27 = call i32 (...) @empty_struct()
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @t1(...) #1

declare dso_local i32 @t2(...) #1

declare dso_local i32 @t3(...) #1

declare dso_local i32 @t4(...) #1

declare dso_local i32 @t5(...) #1

declare dso_local i32 @t6(...) #1

declare dso_local i32 @t7(...) #1

declare dso_local i32 @t8(...) #1

declare dso_local i32 @t9(...) #1

declare dso_local i32 @t10(...) #1

declare dso_local i32 @t11(...) #1

declare dso_local i32 @t12(...) #1

declare dso_local i32 @t13(...) #1

declare dso_local i32 @t14(...) #1

declare dso_local i32 @unnamed(...) #1

declare dso_local i32 @assign(...) #1

declare dso_local i32 @arrow(...) #1

declare dso_local i32 @incomplete(...) #1

declare dso_local i32 @bitfield_basic(...) #1

declare dso_local i32 @bitfield_mix(...) #1

declare dso_local i32 @bitfield_union(...) #1

declare dso_local i32 @bitfield_unnamed(...) #1

declare dso_local i32 @bitfield_initializer(...) #1

declare dso_local i32 @test_offsetof(...) #1

declare dso_local i32 @flexible_member(...) #1

declare dso_local i32 @empty_struct(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
