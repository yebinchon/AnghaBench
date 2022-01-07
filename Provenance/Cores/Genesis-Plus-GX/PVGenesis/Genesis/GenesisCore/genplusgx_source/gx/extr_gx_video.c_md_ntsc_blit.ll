; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_md_ntsc_blit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_md_ntsc_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@md_ntsc_in_chunk = common dso_local global i32 0, align 4
@texturemem = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_ntsc_blit(i32* %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @md_ntsc_in_chunk, align 4
  %18 = sdiv i32 %16, %17
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %8, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MD_NTSC_ADJ_IN(i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MD_NTSC_ADJ_IN(i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %8, align 8
  %44 = load i8, i8* %42, align 1
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @MD_NTSC_ADJ_IN(i32 %47)
  %49 = call i32 @MD_NTSC_BEGIN_ROW(i32* %23, i32 %24, i32 %32, i32 %40, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @MD_NTSC_OUT_WIDTH(i32 %50)
  %52 = ashr i32 %51, 2
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %53, 5
  %55 = load i32, i32* %10, align 4
  %56 = ashr i32 %55, 2
  %57 = mul nsw i32 %54, %56
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 3
  %60 = mul nsw i32 %59, 8
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %13, align 4
  %62 = load i64, i64* @texturemem, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %14, align 8
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %148, %5
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %151

71:                                               ; preds = %68
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  %76 = load i8, i8* %74, align 1
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @MD_NTSC_ADJ_IN(i32 %79)
  %81 = call i32 @MD_NTSC_COLOR_IN(i32 0, i32* %72, i32 %80)
  %82 = load i32*, i32** %14, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %14, align 8
  %84 = load i32, i32* %82, align 4
  %85 = call i32 @MD_NTSC_RGB_OUT(i32 0, i32 %84)
  %86 = load i32*, i32** %14, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %14, align 8
  %88 = load i32, i32* %86, align 4
  %89 = call i32 @MD_NTSC_RGB_OUT(i32 1, i32 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %8, align 8
  %94 = load i8, i8* %92, align 1
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @MD_NTSC_ADJ_IN(i32 %97)
  %99 = call i32 @MD_NTSC_COLOR_IN(i32 1, i32* %90, i32 %98)
  %100 = load i32*, i32** %14, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %14, align 8
  %102 = load i32, i32* %100, align 4
  %103 = call i32 @MD_NTSC_RGB_OUT(i32 2, i32 %102)
  %104 = load i32*, i32** %14, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %14, align 8
  %106 = load i32, i32* %104, align 4
  %107 = call i32 @MD_NTSC_RGB_OUT(i32 3, i32 %106)
  %108 = load i32*, i32** %14, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 12
  store i32* %109, i32** %14, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  %114 = load i8, i8* %112, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @MD_NTSC_ADJ_IN(i32 %117)
  %119 = call i32 @MD_NTSC_COLOR_IN(i32 2, i32* %110, i32 %118)
  %120 = load i32*, i32** %14, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %14, align 8
  %122 = load i32, i32* %120, align 4
  %123 = call i32 @MD_NTSC_RGB_OUT(i32 4, i32 %122)
  %124 = load i32*, i32** %14, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %14, align 8
  %126 = load i32, i32* %124, align 4
  %127 = call i32 @MD_NTSC_RGB_OUT(i32 5, i32 %126)
  %128 = load i32*, i32** %6, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %8, align 8
  %132 = load i8, i8* %130, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @MD_NTSC_ADJ_IN(i32 %135)
  %137 = call i32 @MD_NTSC_COLOR_IN(i32 3, i32* %128, i32 %136)
  %138 = load i32*, i32** %14, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %14, align 8
  %140 = load i32, i32* %138, align 4
  %141 = call i32 @MD_NTSC_RGB_OUT(i32 6, i32 %140)
  %142 = load i32*, i32** %14, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %14, align 8
  %144 = load i32, i32* %142, align 4
  %145 = call i32 @MD_NTSC_RGB_OUT(i32 7, i32 %144)
  %146 = load i32*, i32** %14, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 12
  store i32* %147, i32** %14, align 8
  br label %148

148:                                              ; preds = %71
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %15, align 4
  br label %68

151:                                              ; preds = %68
  %152 = load i32*, i32** %6, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %8, align 8
  %156 = load i8, i8* %154, align 1
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @MD_NTSC_ADJ_IN(i32 %159)
  %161 = call i32 @MD_NTSC_COLOR_IN(i32 0, i32* %152, i32 %160)
  %162 = load i32*, i32** %14, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %14, align 8
  %164 = load i32, i32* %162, align 4
  %165 = call i32 @MD_NTSC_RGB_OUT(i32 0, i32 %164)
  %166 = load i32*, i32** %14, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %14, align 8
  %168 = load i32, i32* %166, align 4
  %169 = call i32 @MD_NTSC_RGB_OUT(i32 1, i32 %168)
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @MD_NTSC_COLOR_IN(i32 1, i32* %170, i32 %171)
  %173 = load i32*, i32** %14, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %14, align 8
  %175 = load i32, i32* %173, align 4
  %176 = call i32 @MD_NTSC_RGB_OUT(i32 2, i32 %175)
  %177 = load i32*, i32** %14, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %14, align 8
  %179 = load i32, i32* %177, align 4
  %180 = call i32 @MD_NTSC_RGB_OUT(i32 3, i32 %179)
  %181 = load i32*, i32** %14, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 12
  store i32* %182, i32** %14, align 8
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @MD_NTSC_COLOR_IN(i32 2, i32* %183, i32 %184)
  %186 = load i32*, i32** %14, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %14, align 8
  %188 = load i32, i32* %186, align 4
  %189 = call i32 @MD_NTSC_RGB_OUT(i32 4, i32 %188)
  %190 = load i32*, i32** %14, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %14, align 8
  %192 = load i32, i32* %190, align 4
  %193 = call i32 @MD_NTSC_RGB_OUT(i32 5, i32 %192)
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @MD_NTSC_COLOR_IN(i32 3, i32* %194, i32 %195)
  %197 = load i32*, i32** %14, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %14, align 8
  %199 = load i32, i32* %197, align 4
  %200 = call i32 @MD_NTSC_RGB_OUT(i32 6, i32 %199)
  %201 = load i32*, i32** %14, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %14, align 8
  %203 = load i32, i32* %201, align 4
  %204 = call i32 @MD_NTSC_RGB_OUT(i32 7, i32 %203)
  ret void
}

declare dso_local i32 @MD_NTSC_BEGIN_ROW(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @MD_NTSC_ADJ_IN(i32) #1

declare dso_local i32 @MD_NTSC_OUT_WIDTH(i32) #1

declare dso_local i32 @MD_NTSC_COLOR_IN(i32, i32*, i32) #1

declare dso_local i32 @MD_NTSC_RGB_OUT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
