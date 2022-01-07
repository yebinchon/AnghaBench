; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_Drawer.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_Drawer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i16, i16, i16, %struct.TYPE_4__*, i32 (...)* }
%struct.TYPE_4__ = type { i64* }

@M_Drawer.x = internal global i16 0, align 2
@M_Drawer.y = internal global i16 0, align 2
@inhelpscreens = common dso_local global i32 0, align 4
@messageToPrint = common dso_local global i64 0, align 8
@messageString = common dso_local global i8* null, align 8
@hu_font = common dso_local global %struct.TYPE_5__** null, align 8
@menuactive = common dso_local global i32 0, align 4
@currentMenu = common dso_local global %struct.TYPE_6__* null, align 8
@PU_CACHE = common dso_local global i32 0, align 4
@LINEHEIGHT = common dso_local global i16 0, align 2
@SKULLXOFF = common dso_local global i16 0, align 2
@itemOn = common dso_local global i16 0, align 2
@skullName = common dso_local global i64** null, align 8
@whichSkull = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_Drawer() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = alloca [40 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* @inhelpscreens, align 4
  %5 = load i64, i64* @messageToPrint, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %104

7:                                                ; preds = %0
  store i32 0, i32* %4, align 4
  %8 = load i8*, i8** @messageString, align 8
  %9 = call i32 @M_StringHeight(i8* %8)
  %10 = sdiv i32 %9, 2
  %11 = sub nsw i32 100, %10
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* @M_Drawer.y, align 2
  br label %13

13:                                               ; preds = %83, %7
  %14 = load i8*, i8** @messageString, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %103

20:                                               ; preds = %13
  store i16 0, i16* %1, align 2
  br label %21

21:                                               ; preds = %59, %20
  %22 = load i16, i16* %1, align 2
  %23 = sext i16 %22 to i32
  %24 = load i8*, i8** @messageString, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = call signext i16 @strlen(i8* %27)
  %29 = sext i16 %28 to i32
  %30 = icmp slt i32 %23, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %21
  %32 = load i8*, i8** @messageString, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i16, i16* %1, align 2
  %37 = sext i16 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %58

43:                                               ; preds = %31
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %45 = call i32 @memset(i8* %44, i32 0, i32 40)
  %46 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %47 = load i8*, i8** @messageString, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i16, i16* %1, align 2
  %52 = call i32 @strncpy(i8* %46, i8* %50, i16 signext %51)
  %53 = load i16, i16* %1, align 2
  %54 = sext i16 %53 to i32
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %62

58:                                               ; preds = %31
  br label %59

59:                                               ; preds = %58
  %60 = load i16, i16* %1, align 2
  %61 = add i16 %60, 1
  store i16 %61, i16* %1, align 2
  br label %21

62:                                               ; preds = %43, %21
  %63 = load i16, i16* %1, align 2
  %64 = sext i16 %63 to i32
  %65 = load i8*, i8** @messageString, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call signext i16 @strlen(i8* %68)
  %70 = sext i16 %69 to i32
  %71 = icmp eq i32 %64, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %62
  %73 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %74 = load i8*, i8** @messageString, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = call i32 @strcpy(i8* %73, i8* %77)
  %79 = load i16, i16* %1, align 2
  %80 = sext i16 %79 to i32
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %72, %62
  %84 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %85 = call i32 @M_StringWidth(i8* %84)
  %86 = sdiv i32 %85, 2
  %87 = sub nsw i32 160, %86
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* @M_Drawer.x, align 2
  %89 = load i16, i16* @M_Drawer.x, align 2
  %90 = load i16, i16* @M_Drawer.y, align 2
  %91 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %92 = call i32 @M_WriteText(i16 signext %89, i16 signext %90, i8* %91)
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @hu_font, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %93, i64 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @SHORT(i32 %97)
  %99 = load i16, i16* @M_Drawer.y, align 2
  %100 = sext i16 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i16
  store i16 %102, i16* @M_Drawer.y, align 2
  br label %13

103:                                              ; preds = %13
  br label %196

104:                                              ; preds = %0
  %105 = load i32, i32* @menuactive, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  br label %196

108:                                              ; preds = %104
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @currentMenu, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = load i32 (...)*, i32 (...)** %110, align 8
  %112 = icmp ne i32 (...)* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @currentMenu, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = load i32 (...)*, i32 (...)** %115, align 8
  %117 = call i32 (...) %116()
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @currentMenu, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i16, i16* %120, align 8
  store i16 %121, i16* @M_Drawer.x, align 2
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @currentMenu, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i16, i16* %123, align 2
  store i16 %124, i16* @M_Drawer.y, align 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @currentMenu, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i16, i16* %126, align 4
  store i16 %127, i16* %2, align 2
  store i16 0, i16* %1, align 2
  br label %128

128:                                              ; preds = %168, %118
  %129 = load i16, i16* %1, align 2
  %130 = sext i16 %129 to i32
  %131 = load i16, i16* %2, align 2
  %132 = sext i16 %131 to i32
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %171

134:                                              ; preds = %128
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** @currentMenu, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i16, i16* %1, align 2
  %139 = sext i16 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %134
  %147 = load i16, i16* @M_Drawer.x, align 2
  %148 = load i16, i16* @M_Drawer.y, align 2
  %149 = sext i16 %148 to i32
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** @currentMenu, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i16, i16* %1, align 2
  %154 = sext i16 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* @PU_CACHE, align 4
  %159 = call i32 @W_CacheLumpName(i64* %157, i32 %158)
  %160 = call i32 @V_DrawPatchDirect(i16 signext %147, i32 %149, i32 0, i32 %159)
  br label %161

161:                                              ; preds = %146, %134
  %162 = load i16, i16* @LINEHEIGHT, align 2
  %163 = sext i16 %162 to i32
  %164 = load i16, i16* @M_Drawer.y, align 2
  %165 = sext i16 %164 to i32
  %166 = add nsw i32 %165, %163
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* @M_Drawer.y, align 2
  br label %168

168:                                              ; preds = %161
  %169 = load i16, i16* %1, align 2
  %170 = add i16 %169, 1
  store i16 %170, i16* %1, align 2
  br label %128

171:                                              ; preds = %128
  %172 = load i16, i16* @M_Drawer.x, align 2
  %173 = sext i16 %172 to i32
  %174 = load i16, i16* @SKULLXOFF, align 2
  %175 = sext i16 %174 to i32
  %176 = add nsw i32 %173, %175
  %177 = trunc i32 %176 to i16
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @currentMenu, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i16, i16* %179, align 2
  %181 = sext i16 %180 to i32
  %182 = sub nsw i32 %181, 5
  %183 = load i16, i16* @itemOn, align 2
  %184 = sext i16 %183 to i32
  %185 = load i16, i16* @LINEHEIGHT, align 2
  %186 = sext i16 %185 to i32
  %187 = mul nsw i32 %184, %186
  %188 = add nsw i32 %182, %187
  %189 = load i64**, i64*** @skullName, align 8
  %190 = load i64, i64* @whichSkull, align 8
  %191 = getelementptr inbounds i64*, i64** %189, i64 %190
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* @PU_CACHE, align 4
  %194 = call i32 @W_CacheLumpName(i64* %192, i32 %193)
  %195 = call i32 @V_DrawPatchDirect(i16 signext %177, i32 %188, i32 0, i32 %194)
  br label %196

196:                                              ; preds = %171, %107, %103
  ret void
}

declare dso_local i32 @M_StringHeight(i8*) #1

declare dso_local signext i16 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i16 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @M_StringWidth(i8*) #1

declare dso_local i32 @M_WriteText(i16 signext, i16 signext, i8*) #1

declare dso_local i64 @SHORT(i32) #1

declare dso_local i32 @V_DrawPatchDirect(i16 signext, i32, i32, i32) #1

declare dso_local i32 @W_CacheLumpName(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
