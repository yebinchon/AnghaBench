; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_TmToSystem.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_TmToSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.tm = type { i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TmToSystem(%struct.TYPE_4__* %0, %struct.tm* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.tm, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.tm*, %struct.tm** %4, align 8
  %10 = icmp eq %struct.tm* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %57

12:                                               ; preds = %8
  %13 = load %struct.tm*, %struct.tm** %4, align 8
  %14 = call i32 @Copy(%struct.tm* %5, %struct.tm* %13, i32 56)
  %15 = call i32 @NormalizeTm(%struct.tm* %5)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = call i32 @Zero(%struct.TYPE_4__* %16, i32 64)
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1900
  %21 = call i8* @MAKESURE(i64 %20, i32 1970, i32 2099)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i8* @MAKESURE(i64 %26, i32 1, i32 12)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @MAKESURE(i64 %31, i32 1, i32 31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @MAKESURE(i64 %36, i32 0, i32 6)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @MAKESURE(i64 %41, i32 0, i32 23)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @MAKESURE(i64 %46, i32 0, i32 59)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @MAKESURE(i64 %51, i32 0, i32 59)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @Copy(%struct.tm*, %struct.tm*, i32) #1

declare dso_local i32 @NormalizeTm(%struct.tm*) #1

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @MAKESURE(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
