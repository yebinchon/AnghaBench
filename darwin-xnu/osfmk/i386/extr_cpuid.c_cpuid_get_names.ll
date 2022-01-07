; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpuid.c_cpuid_get_names.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpuid.c_cpuid_get_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.table*, i32, i8*, i32)* @cpuid_get_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cpuid_get_names(%struct.table* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %82, %4
  %14 = load %struct.table*, %struct.table** %5, align 8
  %15 = load i32, i32* %11, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.table, %struct.table* %14, i64 %16
  %18 = getelementptr inbounds %struct.table, %struct.table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %85

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.table*, %struct.table** %5, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.table, %struct.table* %23, i64 %25
  %27 = getelementptr inbounds %struct.table, %struct.table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %22, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %82

32:                                               ; preds = %21
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = sub i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  store i8 32, i8* %46, align 1
  br label %48

48:                                               ; preds = %45, %35, %32
  %49 = load %struct.table*, %struct.table** %5, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.table, %struct.table* %49, i64 %51
  %53 = getelementptr inbounds %struct.table, %struct.table* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strlen(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = sub i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sub nsw i64 %58, %63
  %65 = call i64 @min(i32 %55, i64 %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %48
  br label %85

69:                                               ; preds = %48
  %70 = load %struct.table*, %struct.table** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.table, %struct.table* %70, i64 %72
  %74 = getelementptr inbounds %struct.table, %struct.table* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @bcopy(i32 %75, i8* %76, i64 %77)
  %79 = load i64, i64* %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8* %81, i8** %10, align 8
  br label %82

82:                                               ; preds = %69, %31
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %13

85:                                               ; preds = %68, %13
  %86 = load i8*, i8** %10, align 8
  store i8 0, i8* %86, align 1
  %87 = load i8*, i8** %7, align 8
  ret i8* %87
}

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @bcopy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
