; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_GetStatus.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_GetStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.card_dat = type { %struct.card_direntry* }
%struct.card_direntry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARD_MAXFILES = common dso_local global i64 0, align 8
@CARD_ERROR_FATAL_ERROR = common dso_local global i64 0, align 8
@CARD_FILENAMELEN = common dso_local global i32 0, align 4
@CARD_ERROR_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CARD_GetStatus(i64 %0, i64 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.card_dat*, align 8
  %11 = alloca %struct.card_direntry*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  store %struct.card_dat* null, %struct.card_dat** %10, align 8
  store %struct.card_direntry* null, %struct.card_direntry** %11, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @EXI_CHANNEL_0, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @EXI_CHANNEL_2, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %20, i64* %4, align 8
  br label %115

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @CARD_MAXFILES, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %21
  %29 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %29, i64* %4, align 8
  br label %115

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @__card_getcntrlblock(i64 %31, %struct.TYPE_9__** %9)
  store i64 %32, i64* %8, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %4, align 8
  br label %115

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_9__* %37)
  store %struct.card_dat* %38, %struct.card_dat** %10, align 8
  %39 = load %struct.card_dat*, %struct.card_dat** %10, align 8
  %40 = icmp ne %struct.card_dat* %39, null
  br i1 %40, label %41, label %111

41:                                               ; preds = %36
  %42 = load %struct.card_dat*, %struct.card_dat** %10, align 8
  %43 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %42, i32 0, i32 0
  %44 = load %struct.card_direntry*, %struct.card_direntry** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %44, i64 %45
  store %struct.card_direntry* %46, %struct.card_direntry** %11, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.card_direntry*, %struct.card_direntry** %11, align 8
  %51 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32 %49, i32 %52, i32 4)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.card_direntry*, %struct.card_direntry** %11, align 8
  %58 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(i32 %56, i32 %59, i32 2)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.card_direntry*, %struct.card_direntry** %11, align 8
  %65 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CARD_FILENAMELEN, align 4
  %68 = call i32 @memcpy(i32 %63, i32 %66, i32 %67)
  %69 = load %struct.card_direntry*, %struct.card_direntry** %11, align 8
  %70 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.card_direntry*, %struct.card_direntry** %11, align 8
  %79 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.card_direntry*, %struct.card_direntry** %11, align 8
  %84 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.card_direntry*, %struct.card_direntry** %11, align 8
  %89 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.card_direntry*, %struct.card_direntry** %11, align 8
  %94 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.card_direntry*, %struct.card_direntry** %11, align 8
  %99 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.card_direntry*, %struct.card_direntry** %11, align 8
  %104 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.card_direntry*, %struct.card_direntry** %11, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = call i32 @__card_updateiconoffsets(%struct.card_direntry* %108, %struct.TYPE_8__* %109)
  br label %111

111:                                              ; preds = %41, %36
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %113 = load i32, i32* @CARD_ERROR_READY, align 4
  %114 = call i64 @__card_putcntrlblock(%struct.TYPE_9__* %112, i32 %113)
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %111, %34, %28, %19
  %116 = load i64, i64* %4, align 8
  ret i64 %116
}

declare dso_local i64 @__card_getcntrlblock(i64, %struct.TYPE_9__**) #1

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__card_updateiconoffsets(%struct.card_direntry*, %struct.TYPE_8__*) #1

declare dso_local i64 @__card_putcntrlblock(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
