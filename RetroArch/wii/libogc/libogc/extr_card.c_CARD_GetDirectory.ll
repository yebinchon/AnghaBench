; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_GetDirectory.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_GetDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64 }
%struct.card_dat = type { %struct.card_direntry* }
%struct.card_direntry = type { i32*, i32*, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@CARD_ERROR_READY = common dso_local global i64 0, align 8
@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARD_MAXFILES = common dso_local global i64 0, align 8
@card_gamecode = common dso_local global i32* null, align 8
@card_company = common dso_local global i32* null, align 8
@CARD_FILENAMELEN = common dso_local global i32 0, align 4
@CARD_ERROR_NOFILE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CARD_GetDirectory(i64 %0, %struct.TYPE_7__* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.card_dat*, align 8
  %14 = alloca %struct.card_direntry*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %16, i64* %12, align 8
  store %struct.card_dat* null, %struct.card_dat** %13, align 8
  store %struct.card_direntry* null, %struct.card_direntry** %14, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @EXI_CHANNEL_0, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @EXI_CHANNEL_2, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %4
  %25 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %25, i64* %5, align 8
  br label %174

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @__card_getcntrlblock(i64 %27, %struct.TYPE_8__** %15)
  store i64 %28, i64* %12, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* %12, align 8
  store i64 %31, i64* %5, align 8
  br label %174

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %38, i64* %5, align 8
  br label %174

39:                                               ; preds = %32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %41 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_8__* %40)
  store %struct.card_dat* %41, %struct.card_dat** %13, align 8
  %42 = load %struct.card_dat*, %struct.card_dat** %13, align 8
  %43 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %42, i32 0, i32 0
  %44 = load %struct.card_direntry*, %struct.card_direntry** %43, align 8
  store %struct.card_direntry* %44, %struct.card_direntry** %14, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %45

45:                                               ; preds = %155, %39
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @CARD_MAXFILES, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %158

49:                                               ; preds = %45
  %50 = load %struct.card_direntry*, %struct.card_direntry** %14, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %50, i64 %51
  %53 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 255
  br i1 %57, label %58, label %154

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %89, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** @card_gamecode, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 255
  br i1 %65, label %66, label %153

66:                                               ; preds = %61
  %67 = load %struct.card_direntry*, %struct.card_direntry** %14, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %67, i64 %68
  %70 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32*, i32** @card_gamecode, align 8
  %73 = call i64 @memcmp(i32* %71, i32* %72, i32 4)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %153

75:                                               ; preds = %66
  %76 = load i32*, i32** @card_company, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 255
  br i1 %79, label %80, label %153

80:                                               ; preds = %75
  %81 = load %struct.card_direntry*, %struct.card_direntry** %14, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %81, i64 %82
  %84 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32*, i32** @card_company, align 8
  %87 = call i64 @memcmp(i32* %85, i32* %86, i32 2)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %153

89:                                               ; preds = %80, %58
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  store i64 %90, i64* %94, align 8
  %95 = load %struct.card_direntry*, %struct.card_direntry** %14, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %95, i64 %96
  %98 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  store i32 %99, i32* %103, align 8
  %104 = load %struct.card_direntry*, %struct.card_direntry** %14, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %104, i64 %105
  %107 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 %112, i32* %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.card_direntry*, %struct.card_direntry** %14, align 8
  %123 = load i64, i64* %10, align 8
  %124 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %122, i64 %123
  %125 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @memcpy(i32 %121, i32* %126, i32 4)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %129 = load i64, i64* %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.card_direntry*, %struct.card_direntry** %14, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %133, i64 %134
  %136 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @memcpy(i32 %132, i32* %137, i32 2)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %140 = load i64, i64* %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.card_direntry*, %struct.card_direntry** %14, align 8
  %145 = load i64, i64* %10, align 8
  %146 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %144, i64 %145
  %147 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @CARD_FILENAMELEN, align 4
  %150 = call i32 @memcpy(i32 %143, i32* %148, i32 %149)
  %151 = load i64, i64* %11, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %11, align 8
  br label %153

153:                                              ; preds = %89, %80, %75, %66, %61
  br label %154

154:                                              ; preds = %153, %49
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %10, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %10, align 8
  br label %45

158:                                              ; preds = %45
  %159 = load i64*, i64** %8, align 8
  %160 = icmp ne i64* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i64, i64* %11, align 8
  %163 = load i64*, i64** %8, align 8
  store i64 %162, i64* %163, align 8
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i64, i64* %11, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i64, i64* @CARD_ERROR_NOFILE, align 8
  store i64 %168, i64* %12, align 8
  br label %169

169:                                              ; preds = %167, %164
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %171 = load i64, i64* %12, align 8
  %172 = call i32 @__card_putcntrlblock(%struct.TYPE_8__* %170, i64 %171)
  %173 = load i64, i64* %12, align 8
  store i64 %173, i64* %5, align 8
  br label %174

174:                                              ; preds = %169, %37, %30, %24
  %175 = load i64, i64* %5, align 8
  ret i64 %175
}

declare dso_local i64 @__card_getcntrlblock(i64, %struct.TYPE_8__**) #1

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_8__*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
