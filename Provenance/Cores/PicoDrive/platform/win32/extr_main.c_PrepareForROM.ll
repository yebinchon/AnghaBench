; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/win32/extr_main.c_PrepareForROM.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/win32/extr_main.c_PrepareForROM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64 }

@PicoAHW = common dso_local global i32 0, align 4
@PAHW_PICO = common dso_local global i32 0, align 4
@PI_ROM = common dso_local global i32 0, align 4
@mmain = common dso_local global i32 0, align 4
@MF_BYPOSITION = common dso_local global i32 0, align 4
@MF_ENABLED = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4
@PicoPadWnd = common dso_local global i32 0, align 4
@SW_SHOWNA = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@PicoSwWnd = common dso_local global i32 0, align 4
@mpicohw = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@MF_UNCHECKED = common dso_local global i32 0, align 4
@FrameWnd = common dso_local global i32 0, align 4
@WM_COMMAND = common dso_local global i32 0, align 4
@PicoPicohw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@in_vk_add_pl12 = common dso_local global i64 0, align 8
@rom_name = common dso_local global i8* null, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@ppad_bmp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"pico\\pad.png\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"pico\\alias.txt\00", align 1
@ppage_bmps = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"pico\\%s_%i.png\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"pico\\%s_5.png\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PrepareForROM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrepareForROM() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  %8 = load i32, i32* @PicoAHW, align 4
  %9 = load i32, i32* @PAHW_PICO, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @PI_ROM, align 4
  %12 = bitcast i8** %1 to i32*
  %13 = call i32 @PicoGetInternal(i32 %11, i32* %12)
  %14 = load i32, i32* @mmain, align 4
  %15 = load i32, i32* @MF_BYPOSITION, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = load i32, i32* @MF_ENABLED, align 4
  br label %22

20:                                               ; preds = %0
  %21 = load i32, i32* @MF_GRAYED, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = or i32 %15, %23
  %25 = call i32 @EnableMenuItem(i32 %14, i32 2, i32 %24)
  %26 = load i32, i32* @PicoPadWnd, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @SW_SHOWNA, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @SW_HIDE, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i32 @ShowWindow(i32 %26, i32 %34)
  %36 = load i32, i32* @PicoSwWnd, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @SW_SHOWNA, align 4
  br label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @SW_HIDE, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @ShowWindow(i32 %36, i32 %44)
  %46 = load i32, i32* @mpicohw, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @MF_CHECKED, align 4
  br label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @MF_UNCHECKED, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = call i32 @CheckMenuItem(i32 %46, i32 1210, i32 %54)
  %56 = load i32, i32* @mpicohw, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @MF_CHECKED, align 4
  br label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @MF_UNCHECKED, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @CheckMenuItem(i32 %56, i32 1211, i32 %64)
  %66 = load i32, i32* @FrameWnd, align 4
  %67 = load i32, i32* @WM_COMMAND, align 4
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 1), align 8
  %69 = add nsw i64 1220, %68
  %70 = call i32 @PostMessage(i32 %66, i32 %67, i64 %69, i32 0)
  %71 = load i32, i32* @FrameWnd, align 4
  %72 = call i32 @DrawMenuBar(i32 %71)
  %73 = load i32, i32* @PicoSwWnd, align 4
  %74 = call i32 @InvalidateRect(i32 %73, i32* null, i32 1)
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 0), align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 32768, i32* %76, align 4
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 0), align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 32768, i32* %78, align 4
  store i64 0, i64* @in_vk_add_pl12, align 8
  %79 = load i8*, i8** @rom_name, align 8
  %80 = load i8*, i8** %1, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 336
  %82 = call i32 @extract_rom_name(i8* %79, i8* %81, i32 32)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %63
  %86 = load i8*, i8** @rom_name, align 8
  %87 = load i8*, i8** %1, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 304
  %89 = call i32 @extract_rom_name(i8* %86, i8* %88, i32 32)
  br label %90

90:                                               ; preds = %85, %63
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %171

93:                                               ; preds = %90
  %94 = load i32, i32* @MAX_PATH, align 4
  %95 = zext i32 %94 to i64
  %96 = call i8* @llvm.stacksave()
  store i8* %96, i8** %5, align 8
  %97 = alloca i8, i64 %95, align 16
  store i64 %95, i64* %6, align 8
  %98 = sub i64 %95, 32
  %99 = trunc i64 %98 to i32
  %100 = call i32 @GetModuleFileName(i32* null, i8* %97, i32 %99)
  %101 = call i8* @strrchr(i8* %97, i8 signext 92)
  store i8* %101, i8** %7, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  store i8* %97, i8** %7, align 8
  br label %108

105:                                              ; preds = %93
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %7, align 8
  br label %108

108:                                              ; preds = %105, %104
  %109 = load i32*, i32** @ppad_bmp, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @strcpy(i8* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %114 = call i8* @png2hb(i8* %97, i32 0)
  %115 = bitcast i8* %114 to i32*
  store i32* %115, i32** @ppad_bmp, align 8
  br label %116

116:                                              ; preds = %111, %108
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @strcpy(i8* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %119 = call i32 @check_name_alias(i8* %97)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %148, %116
  %121 = load i32, i32* %2, align 4
  %122 = icmp slt i32 %121, 7
  br i1 %122, label %123, label %151

123:                                              ; preds = %120
  %124 = load i32**, i32*** @ppage_bmps, align 8
  %125 = load i32, i32* %2, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load i32**, i32*** @ppage_bmps, align 8
  %132 = load i32, i32* %2, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @DeleteObject(i32* %135)
  br label %137

137:                                              ; preds = %130, %123
  %138 = load i8*, i8** %7, align 8
  %139 = load i8*, i8** @rom_name, align 8
  %140 = load i32, i32* %2, align 4
  %141 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %139, i32 %140)
  %142 = call i8* @png2hb(i8* %97, i32 1)
  %143 = bitcast i8* %142 to i32*
  %144 = load i32**, i32*** @ppage_bmps, align 8
  %145 = load i32, i32* %2, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  store i32* %143, i32** %147, align 8
  br label %148

148:                                              ; preds = %137
  %149 = load i32, i32* %2, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %2, align 4
  br label %120

151:                                              ; preds = %120
  %152 = load i32**, i32*** @ppage_bmps, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 6
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %169

156:                                              ; preds = %151
  %157 = load i32**, i32*** @ppage_bmps, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 5
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load i8*, i8** %7, align 8
  %163 = load i8*, i8** @rom_name, align 8
  %164 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %163)
  %165 = call i8* @png2hb(i8* %97, i32 1)
  %166 = bitcast i8* %165 to i32*
  %167 = load i32**, i32*** @ppage_bmps, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 6
  store i32* %166, i32** %168, align 8
  br label %169

169:                                              ; preds = %161, %156, %151
  %170 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %170)
  br label %171

171:                                              ; preds = %169, %90
  ret void
}

declare dso_local i32 @PicoGetInternal(i32, i32*) #1

declare dso_local i32 @EnableMenuItem(i32, i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #1

declare dso_local i32 @PostMessage(i32, i32, i64, i32) #1

declare dso_local i32 @DrawMenuBar(i32) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

declare dso_local i32 @extract_rom_name(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetModuleFileName(i32*, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @png2hb(i8*, i32) #1

declare dso_local i32 @check_name_alias(i8*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
