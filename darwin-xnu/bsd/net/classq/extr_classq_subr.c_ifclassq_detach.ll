; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i32*, i32*, i32*, i32*, i32*, i32 }

@PKTSCHEDT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifclassq_detach(%struct.ifclassq* %0) #0 {
  %2 = alloca %struct.ifclassq*, align 8
  store %struct.ifclassq* %0, %struct.ifclassq** %2, align 8
  %3 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %4 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %3)
  %5 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %6 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load i32, i32* @PKTSCHEDT_NONE, align 4
  %12 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %13 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %15 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %17 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %19 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %21 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %23 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  ret i32 0
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
