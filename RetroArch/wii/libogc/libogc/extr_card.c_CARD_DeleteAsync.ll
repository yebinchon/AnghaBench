; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_DeleteAsync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_DeleteAsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.card_dat = type { %struct.card_direntry* }
%struct.card_direntry = type { i32 }

@card_gamecode = common dso_local global i64 0, align 8
@card_company = common dso_local global i64 0, align 8
@__card_defaultapicallback = common dso_local global i32* null, align 8
@__delete_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CARD_DeleteAsync(i64 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.card_dat*, align 8
  %13 = alloca %struct.card_direntry*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %10, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  store %struct.card_dat* null, %struct.card_dat** %12, align 8
  store %struct.card_direntry* null, %struct.card_direntry** %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @__card_getcntrlblock(i64 %14, %struct.TYPE_6__** %11)
  store i64 %15, i64* %8, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %4, align 8
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* @card_gamecode, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load i64, i64* @card_company, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i64 @__card_getfilenum(%struct.TYPE_6__* %20, i8* %21, i8* %23, i8* %25, i64* %9)
  store i64 %26, i64* %8, align 8
  %27 = icmp ult i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @__card_putcntrlblock(%struct.TYPE_6__* %29, i64 %30)
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %4, align 8
  br label %68

33:                                               ; preds = %19
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_6__* %34)
  store %struct.card_dat* %35, %struct.card_dat** %12, align 8
  %36 = load %struct.card_dat*, %struct.card_dat** %12, align 8
  %37 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %36, i32 0, i32 0
  %38 = load %struct.card_direntry*, %struct.card_direntry** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %38, i64 %39
  store %struct.card_direntry* %40, %struct.card_direntry** %13, align 8
  %41 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %42 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %47 = call i32 @memset(%struct.card_direntry* %46, i32 -1, i32 4)
  %48 = load i32*, i32** %7, align 8
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %33
  %52 = load i32*, i32** @__card_defaultapicallback, align 8
  store i32* %52, i32** %10, align 8
  br label %53

53:                                               ; preds = %51, %33
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* @__delete_callback, align 4
  %59 = call i64 @__card_updatedir(i64 %57, i32 %58)
  store i64 %59, i64* %8, align 8
  %60 = icmp uge i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i64, i64* %8, align 8
  store i64 %62, i64* %4, align 8
  br label %68

63:                                               ; preds = %53
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @__card_putcntrlblock(%struct.TYPE_6__* %64, i64 %65)
  %67 = load i64, i64* %8, align 8
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %63, %61, %28, %17
  %69 = load i64, i64* %4, align 8
  ret i64 %69
}

declare dso_local i64 @__card_getcntrlblock(i64, %struct.TYPE_6__**) #1

declare dso_local i64 @__card_getfilenum(%struct.TYPE_6__*, i8*, i8*, i8*, i64*) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_6__*, i64) #1

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(%struct.card_direntry*, i32, i32) #1

declare dso_local i64 @__card_updatedir(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
