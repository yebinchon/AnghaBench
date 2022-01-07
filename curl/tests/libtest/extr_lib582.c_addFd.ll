; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_addFd.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_addFd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sockets = type { i32, i32, i64* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Add socket fd %d for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Sockets*, i64, i8*)* @addFd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addFd(%struct.Sockets* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.Sockets*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.Sockets* %0, %struct.Sockets** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @stderr, align 4
  %9 = load i64, i64* %5, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10, i8* %11)
  %13 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @removeFd(%struct.Sockets* %13, i64 %14, i32 0)
  %16 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %17 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %3
  %21 = call i64* @malloc(i32 160)
  %22 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %23 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %22, i32 0, i32 2
  store i64* %21, i64** %23, align 8
  %24 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %25 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %84

29:                                               ; preds = %20
  %30 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %31 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %30, i32 0, i32 0
  store i32 20, i32* %31, align 8
  br label %70

32:                                               ; preds = %3
  %33 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %34 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %38 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %32
  %42 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %43 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  store i64* %44, i64** %7, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %47 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 20
  %50 = sext i32 %49 to i64
  %51 = mul i64 8, %50
  %52 = trunc i64 %51 to i32
  %53 = call i64* @realloc(i64* %45, i32 %52)
  %54 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %55 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %54, i32 0, i32 2
  store i64* %53, i64** %55, align 8
  %56 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %57 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %41
  %61 = load i64*, i64** %7, align 8
  %62 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %63 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %62, i32 0, i32 2
  store i64* %61, i64** %63, align 8
  br label %84

64:                                               ; preds = %41
  %65 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %66 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 20
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %32
  br label %70

70:                                               ; preds = %69, %29
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %73 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %76 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %74, i64 %78
  store i64 %71, i64* %79, align 8
  %80 = load %struct.Sockets*, %struct.Sockets** %4, align 8
  %81 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %70, %60, %28
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @removeFd(%struct.Sockets*, i64, i32) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i64* @realloc(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
