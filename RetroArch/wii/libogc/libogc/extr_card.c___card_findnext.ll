; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_findnext.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_findnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, i32, i64 }
%struct.card_dat = type { %struct.card_direntry* }
%struct.card_direntry = type { i32*, i32*, i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i32 0, align 4
@CARD_MAXFILES = common dso_local global i64 0, align 8
@CARD_ERROR_NOFILE = common dso_local global i32 0, align 4
@card_gamecode = common dso_local global i32 0, align 4
@card_company = common dso_local global i32 0, align 4
@CARD_FILENAMELEN = common dso_local global i32 0, align 4
@CARD_ERROR_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__card_findnext(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_dat*, align 8
  %6 = alloca %struct.card_direntry*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.card_dat* null, %struct.card_dat** %5, align 8
  store %struct.card_direntry* null, %struct.card_direntry** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EXI_CHANNEL_0, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EXI_CHANNEL_2, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %1
  %20 = load i32, i32* @CARD_ERROR_NOCARD, align 4
  store i32 %20, i32* %2, align 4
  br label %162

21:                                               ; preds = %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CARD_MAXFILES, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @CARD_ERROR_NOFILE, align 4
  store i32 %28, i32* %2, align 4
  br label %162

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @__card_getcntrlblock(i64 %32, %struct.TYPE_8__** %7)
  store i32 %33, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %162

37:                                               ; preds = %29
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @CARD_ERROR_NOCARD, align 4
  store i32 %43, i32* %2, align 4
  br label %162

44:                                               ; preds = %37
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_8__* %45)
  store %struct.card_dat* %46, %struct.card_dat** %5, align 8
  %47 = load %struct.card_dat*, %struct.card_dat** %5, align 8
  %48 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %47, i32 0, i32 0
  %49 = load %struct.card_direntry*, %struct.card_direntry** %48, align 8
  store %struct.card_direntry* %49, %struct.card_direntry** %6, align 8
  br label %50

50:                                               ; preds = %151, %44
  %51 = load %struct.card_direntry*, %struct.card_direntry** %6, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %51, i64 %54
  %56 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 255
  br i1 %60, label %61, label %146

61:                                               ; preds = %50
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %61
  %67 = load %struct.card_direntry*, %struct.card_direntry** %6, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %67, i64 %70
  %72 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @card_gamecode, align 4
  %75 = call i64 @memcmp(i32* %73, i32 %74, i32 4)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %145

77:                                               ; preds = %66, %61
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %77
  %83 = load %struct.card_direntry*, %struct.card_direntry** %6, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %83, i64 %86
  %88 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* @card_company, align 4
  %91 = call i64 @memcmp(i32* %89, i32 %90, i32 2)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %145

93:                                               ; preds = %82, %77
  %94 = load %struct.card_direntry*, %struct.card_direntry** %6, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %94, i64 %97
  %99 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %100, %103
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.card_direntry*, %struct.card_direntry** %6, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %110, i64 %113
  %115 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @CARD_FILENAMELEN, align 4
  %118 = call i32 @memcpy(i32 %109, i32* %116, i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.card_direntry*, %struct.card_direntry** %6, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %122, i64 %125
  %127 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @memcpy(i32 %121, i32* %128, i32 4)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.card_direntry*, %struct.card_direntry** %6, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %133, i64 %136
  %138 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @memcpy(i32 %132, i32* %139, i32 2)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %142 = load i32, i32* @CARD_ERROR_READY, align 4
  %143 = call i32 @__card_putcntrlblock(%struct.TYPE_8__* %141, i32 %142)
  %144 = load i32, i32* @CARD_ERROR_READY, align 4
  store i32 %144, i32* %2, align 4
  br label %162

145:                                              ; preds = %82, %66
  br label %146

146:                                              ; preds = %145, %50
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @CARD_MAXFILES, align 8
  %156 = icmp ult i64 %154, %155
  br i1 %156, label %50, label %157

157:                                              ; preds = %151
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %159 = load i32, i32* @CARD_ERROR_NOFILE, align 4
  %160 = call i32 @__card_putcntrlblock(%struct.TYPE_8__* %158, i32 %159)
  %161 = load i32, i32* @CARD_ERROR_NOFILE, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %157, %93, %42, %35, %27, %19
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @__card_getcntrlblock(i64, %struct.TYPE_8__**) #1

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_8__*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
