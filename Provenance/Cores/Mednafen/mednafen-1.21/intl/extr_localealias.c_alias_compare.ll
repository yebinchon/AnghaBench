; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_localealias.c_alias_compare.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_localealias.c_alias_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_map = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alias_map*, %struct.alias_map*)* @alias_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alias_compare(%struct.alias_map* %0, %struct.alias_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alias_map*, align 8
  %5 = alloca %struct.alias_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.alias_map* %0, %struct.alias_map** %4, align 8
  store %struct.alias_map* %1, %struct.alias_map** %5, align 8
  %10 = load %struct.alias_map*, %struct.alias_map** %4, align 8
  %11 = getelementptr inbounds %struct.alias_map, %struct.alias_map* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %6, align 8
  %14 = load %struct.alias_map*, %struct.alias_map** %5, align 8
  %15 = getelementptr inbounds %struct.alias_map, %struct.alias_map* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %65, %22
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isupper(i8 zeroext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call zeroext i8 @tolower(i8 zeroext %30)
  %32 = zext i8 %31 to i32
  br label %37

33:                                               ; preds = %23
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i32 [ %32, %28 ], [ %36, %33 ]
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %8, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @isupper(i8 zeroext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call zeroext i8 @tolower(i8 zeroext %46)
  %48 = zext i8 %47 to i32
  br label %53

49:                                               ; preds = %37
  %50 = load i8*, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i32 [ %48, %44 ], [ %52, %49 ]
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %9, align 1
  %56 = load i8, i8* %8, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %71

60:                                               ; preds = %53
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %65

65:                                               ; preds = %60
  %66 = load i8, i8* %8, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* %9, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %23, label %71

71:                                               ; preds = %65, %59
  %72 = load i8, i8* %8, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* %9, align 1
  %75 = zext i8 %74 to i32
  %76 = sub nsw i32 %73, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @isupper(i8 zeroext) #1

declare dso_local zeroext i8 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
