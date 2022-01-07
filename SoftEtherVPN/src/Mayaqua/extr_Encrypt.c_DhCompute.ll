; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_DhCompute.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_DhCompute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DhCompute(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %4
  store i32 0, i32* %5, align 4
  br label %78

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %78

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32* @BinToBigNum(i8* %31, i32 %32)
  store i32* %33, i32** %11, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DH_compute_key(i8* %34, i32* %35, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  store i32 1, i32* %12, align 4
  br label %74

46:                                               ; preds = %30
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32* @Clone(i8* %53, i32 %54)
  store i32* %55, i32** %13, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @Zero(i8* %56, i32 %59)
  %61 = load i8*, i8** %7, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %62, i64 %68
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @Copy(i32* %69, i32* %70, i32 %71)
  store i32 1, i32* %12, align 4
  br label %73

73:                                               ; preds = %52, %46
  br label %74

74:                                               ; preds = %73, %45
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @BN_free(i32* %75)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %29, %22
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32* @BinToBigNum(i8*, i32) #1

declare dso_local i32 @DH_compute_key(i8*, i32*, i32) #1

declare dso_local i32* @Clone(i8*, i32) #1

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
