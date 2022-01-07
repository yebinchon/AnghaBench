; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_SystemToTm.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_SystemToTm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SystemToTm(%struct.tm* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.tm* %0, %struct.tm** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.tm*, %struct.tm** %3, align 8
  %6 = icmp eq %struct.tm* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %56

11:                                               ; preds = %7
  %12 = load %struct.tm*, %struct.tm** %3, align 8
  %13 = call i32 @Zero(%struct.tm* %12, i32 56)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @MAKESURE(i32 %16, i32 1970, i32 2099)
  %18 = getelementptr i8, i8* %17, i64 -1900
  %19 = load %struct.tm*, %struct.tm** %3, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @MAKESURE(i32 %23, i32 1, i32 12)
  %25 = getelementptr i8, i8* %24, i64 -1
  %26 = load %struct.tm*, %struct.tm** %3, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @MAKESURE(i32 %30, i32 1, i32 31)
  %32 = load %struct.tm*, %struct.tm** %3, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @MAKESURE(i32 %36, i32 0, i32 23)
  %38 = load %struct.tm*, %struct.tm** %3, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @MAKESURE(i32 %42, i32 0, i32 59)
  %44 = load %struct.tm*, %struct.tm** %3, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @MAKESURE(i32 %48, i32 0, i32 59)
  %50 = load %struct.tm*, %struct.tm** %3, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.tm*, %struct.tm** %3, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  %54 = load %struct.tm*, %struct.tm** %3, align 8
  %55 = call i32 @NormalizeTm(%struct.tm* %54)
  br label %56

56:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @Zero(%struct.tm*, i32) #1

declare dso_local i8* @MAKESURE(i32, i32, i32) #1

declare dso_local i32 @NormalizeTm(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
