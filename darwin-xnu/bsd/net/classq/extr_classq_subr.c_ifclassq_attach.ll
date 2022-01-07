; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i32*, i32, i32, i32, i32, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifclassq_attach(%struct.ifclassq* %0, i32 %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca %struct.ifclassq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.ifclassq* %0, %struct.ifclassq** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %19 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %20 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %19)
  %21 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %22 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @VERIFY(i32 %25)
  %27 = load i32*, i32** %13, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @VERIFY(i32 %29)
  %31 = load i32*, i32** %18, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @VERIFY(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %37 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %41 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %40, i32 0, i32 6
  store i32* %39, i32** %41, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %44 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %43, i32 0, i32 5
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %47 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %50 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %53 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %56 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %59 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
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
