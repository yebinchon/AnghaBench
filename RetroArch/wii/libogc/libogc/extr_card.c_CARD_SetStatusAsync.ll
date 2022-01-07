; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_SetStatusAsync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_SetStatusAsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.card_dat = type { %struct.card_direntry* }
%struct.card_direntry = type { i32, i32, i32, i32, i32, i32 }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARD_MAXFILES = common dso_local global i64 0, align 8
@CARD_ERROR_FATAL_ERROR = common dso_local global i64 0, align 8
@CARD_READSIZE = common dso_local global i32 0, align 4
@CARD_ERROR_BROKEN = common dso_local global i64 0, align 8
@CARD_ICON_MASK = common dso_local global i32 0, align 4
@CARD_ICON_CI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CARD_SetStatusAsync(i64 %0, i64 %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.card_dat*, align 8
  %13 = alloca %struct.card_direntry*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %11, align 8
  store %struct.card_dat* null, %struct.card_dat** %12, align 8
  store %struct.card_direntry* null, %struct.card_direntry** %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @EXI_CHANNEL_0, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @EXI_CHANNEL_2, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %4
  %22 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %22, i64* %5, align 8
  br label %133

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @CARD_MAXFILES, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %23
  %31 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %31, i64* %5, align 8
  br label %133

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CARD_READSIZE, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %44, i64* %5, align 8
  br label %133

45:                                               ; preds = %37, %32
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 8128
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %56, i64* %5, align 8
  br label %133

57:                                               ; preds = %50, %45
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @__card_getcntrlblock(i64 %58, i32** %11)
  store i64 %59, i64* %10, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* %10, align 8
  store i64 %62, i64* %5, align 8
  br label %133

63:                                               ; preds = %57
  %64 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  store i64 %64, i64* %10, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call %struct.card_dat* @__card_getdirblock(i32* %65)
  store %struct.card_dat* %66, %struct.card_dat** %12, align 8
  %67 = load %struct.card_dat*, %struct.card_dat** %12, align 8
  %68 = icmp ne %struct.card_dat* %67, null
  br i1 %68, label %69, label %129

69:                                               ; preds = %63
  %70 = load %struct.card_dat*, %struct.card_dat** %12, align 8
  %71 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %70, i32 0, i32 0
  %72 = load %struct.card_direntry*, %struct.card_direntry** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %72, i64 %73
  store %struct.card_direntry* %74, %struct.card_direntry** %13, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %79 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %84 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %89 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %94 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %99 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = call i32 @__card_updateiconoffsets(%struct.card_direntry* %100, %struct.TYPE_4__* %101)
  %103 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %104 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %118

107:                                              ; preds = %69
  %108 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %109 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CARD_ICON_MASK, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %110, %112
  %114 = load i32, i32* @CARD_ICON_CI, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %117 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %107, %69
  %119 = call i32 @time(i32* null)
  %120 = load %struct.card_direntry*, %struct.card_direntry** %13, align 8
  %121 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load i64, i64* %6, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i64 @__card_updatedir(i64 %122, i32 %123)
  store i64 %124, i64* %10, align 8
  %125 = icmp sge i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i64, i64* %10, align 8
  store i64 %127, i64* %5, align 8
  br label %133

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %63
  %130 = load i32*, i32** %11, align 8
  %131 = load i64, i64* %10, align 8
  %132 = call i64 @__card_putcntrlblock(i32* %130, i64 %131)
  store i64 %132, i64* %5, align 8
  br label %133

133:                                              ; preds = %129, %126, %61, %55, %43, %30, %21
  %134 = load i64, i64* %5, align 8
  ret i64 %134
}

declare dso_local i64 @__card_getcntrlblock(i64, i32**) #1

declare dso_local %struct.card_dat* @__card_getdirblock(i32*) #1

declare dso_local i32 @__card_updateiconoffsets(%struct.card_direntry*, %struct.TYPE_4__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @__card_updatedir(i64, i32) #1

declare dso_local i64 @__card_putcntrlblock(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
