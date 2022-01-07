; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_getfilenum.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_getfilenum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.card_direntry = type { i32*, i32*, i64 }
%struct.card_dat = type { %struct.card_direntry* }

@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARD_MAXFILES = common dso_local global i64 0, align 8
@CARD_ERROR_NOFILE = common dso_local global i64 0, align 8
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i8*, i8*, i8*, i64*)* @__card_getfilenum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_getfilenum(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.card_direntry*, align 8
  %14 = alloca %struct.card_dat*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %12, align 8
  store %struct.card_direntry* null, %struct.card_direntry** %13, align 8
  store %struct.card_dat* null, %struct.card_dat** %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %20, i64* %6, align 8
  br label %103

21:                                               ; preds = %5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_4__* %22)
  store %struct.card_dat* %23, %struct.card_dat** %14, align 8
  %24 = load %struct.card_dat*, %struct.card_dat** %14, align 8
  %25 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %24, i32 0, i32 0
  %26 = load %struct.card_direntry*, %struct.card_direntry** %25, align 8
  store %struct.card_direntry* %26, %struct.card_direntry** %13, align 8
  store i64 0, i64* %12, align 8
  br label %27

27:                                               ; preds = %92, %21
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @CARD_MAXFILES, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %95

31:                                               ; preds = %27
  %32 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %32, i64 %33
  %35 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 255
  br i1 %39, label %40, label %91

40:                                               ; preds = %31
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %42, i64 %43
  %45 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i64 @strcmp(i8* %41, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %90

50:                                               ; preds = %40
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 255
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %60, i64 %61
  %63 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i64 @memcmp(i32* %64, i8* %65, i32 4)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %59, %53, %50
  %69 = load i8*, i8** %10, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 255
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %78, i64 %79
  %81 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call i64 @memcmp(i32* %82, i8* %83, i32 2)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77, %59
  br label %92

87:                                               ; preds = %77, %71, %68
  %88 = load i64, i64* %12, align 8
  %89 = load i64*, i64** %11, align 8
  store i64 %88, i64* %89, align 8
  br label %95

90:                                               ; preds = %40
  br label %91

91:                                               ; preds = %90, %31
  br label %92

92:                                               ; preds = %91, %86
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %12, align 8
  br label %27

95:                                               ; preds = %87, %27
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* @CARD_MAXFILES, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i64, i64* @CARD_ERROR_NOFILE, align 8
  store i64 %100, i64* %6, align 8
  br label %103

101:                                              ; preds = %95
  %102 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %102, i64* %6, align 8
  br label %103

103:                                              ; preds = %101, %99, %19
  %104 = load i64, i64* %6, align 8
  ret i64 %104
}

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
