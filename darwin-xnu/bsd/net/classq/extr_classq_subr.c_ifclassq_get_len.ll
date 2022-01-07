; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_get_len.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_get_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i32 }

@MBUF_SC_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifclassq_get_len(%struct.ifclassq* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ifclassq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %11 = call i32 @IFCQ_LOCK(%struct.ifclassq* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MBUF_SC_UNSPEC, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @VERIFY(i32 %18)
  %20 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %21 = call i32 @IFCQ_LEN(%struct.ifclassq* %20)
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  br label %42

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @MBUF_VALID_SC(i32 %24)
  %26 = call i32 @VERIFY(i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i1 [ false, %23 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @VERIFY(i32 %34)
  %36 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @IFCQ_LEN_SC(%struct.ifclassq* %36, i32 %37, i32* %38, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %32, %15
  %43 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %44 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %43)
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @IFCQ_LOCK(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IFCQ_LEN(%struct.ifclassq*) #1

declare dso_local i32 @MBUF_VALID_SC(i32) #1

declare dso_local i32 @IFCQ_LEN_SC(%struct.ifclassq*, i32, i32*, i32*, i32) #1

declare dso_local i32 @IFCQ_UNLOCK(%struct.ifclassq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
