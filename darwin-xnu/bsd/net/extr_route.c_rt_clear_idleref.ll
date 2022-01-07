; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_clear_idleref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_clear_idleref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, i32 (i32, i32)*, i32 }

@RTF_NOIFREF = common dso_local global i32 0, align 4
@RTF_IFREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_clear_idleref(%struct.rtentry* %0) #0 {
  %2 = alloca %struct.rtentry*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %2, align 8
  %3 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %4 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %3)
  %5 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %6 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %5, i32 0, i32 1
  %7 = load i32 (i32, i32)*, i32 (i32, i32)** %6, align 8
  %8 = icmp ne i32 (i32, i32)* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %11 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RTF_NOIFREF, align 4
  %14 = load i32, i32* @RTF_IFREF, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @RTF_IFREF, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %22 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %21)
  %23 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %24 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %23, i32 0, i32 1
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %27 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i32 %28, i32 -1)
  %30 = load i32, i32* @RTF_IFREF, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %33 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %37 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %36, i32 0, i32 1
  store i32 (i32, i32)* null, i32 (i32, i32)** %37, align 8
  br label %38

38:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @RT_CONVERT_LOCK(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
