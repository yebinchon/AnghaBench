; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/ntsc/extr_md_ntsc.c_md_ntsc_blit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/ntsc/extr_md_ntsc.c_md_ntsc_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@md_ntsc_in_chunk = common dso_local global i32 0, align 4
@bitmap = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_ntsc_blit(i32* %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @md_ntsc_in_chunk, align 4
  %17 = sdiv i32 %15, %16
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %11, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %8, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MD_NTSC_ADJ_IN(i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %8, align 8
  %35 = load i8, i8* %33, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MD_NTSC_ADJ_IN(i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  %43 = load i8, i8* %41, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MD_NTSC_ADJ_IN(i32 %46)
  %48 = call i32 @MD_NTSC_BEGIN_ROW(i32* %22, i32 %23, i32 %31, i32 %39, i32 %47)
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bitmap, i32 0, i32 1), align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bitmap, i32 0, i32 0), align 8
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  store i32* %54, i32** %13, align 8
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %132, %5
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %135

59:                                               ; preds = %56
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @MD_NTSC_ADJ_IN(i32 %67)
  %69 = call i32 @MD_NTSC_COLOR_IN(i32 0, i32* %60, i32 %68)
  %70 = load i32*, i32** %13, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %13, align 8
  %72 = load i32, i32* %70, align 4
  %73 = call i32 @MD_NTSC_RGB_OUT(i32 0, i32 %72)
  %74 = load i32*, i32** %13, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %13, align 8
  %76 = load i32, i32* %74, align 4
  %77 = call i32 @MD_NTSC_RGB_OUT(i32 1, i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  %82 = load i8, i8* %80, align 1
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @MD_NTSC_ADJ_IN(i32 %85)
  %87 = call i32 @MD_NTSC_COLOR_IN(i32 1, i32* %78, i32 %86)
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %13, align 8
  %90 = load i32, i32* %88, align 4
  %91 = call i32 @MD_NTSC_RGB_OUT(i32 2, i32 %90)
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %13, align 8
  %94 = load i32, i32* %92, align 4
  %95 = call i32 @MD_NTSC_RGB_OUT(i32 3, i32 %94)
  %96 = load i32*, i32** %6, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %8, align 8
  %100 = load i8, i8* %98, align 1
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @MD_NTSC_ADJ_IN(i32 %103)
  %105 = call i32 @MD_NTSC_COLOR_IN(i32 2, i32* %96, i32 %104)
  %106 = load i32*, i32** %13, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %13, align 8
  %108 = load i32, i32* %106, align 4
  %109 = call i32 @MD_NTSC_RGB_OUT(i32 4, i32 %108)
  %110 = load i32*, i32** %13, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %13, align 8
  %112 = load i32, i32* %110, align 4
  %113 = call i32 @MD_NTSC_RGB_OUT(i32 5, i32 %112)
  %114 = load i32*, i32** %6, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %8, align 8
  %118 = load i8, i8* %116, align 1
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @MD_NTSC_ADJ_IN(i32 %121)
  %123 = call i32 @MD_NTSC_COLOR_IN(i32 3, i32* %114, i32 %122)
  %124 = load i32*, i32** %13, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %13, align 8
  %126 = load i32, i32* %124, align 4
  %127 = call i32 @MD_NTSC_RGB_OUT(i32 6, i32 %126)
  %128 = load i32*, i32** %13, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %13, align 8
  %130 = load i32, i32* %128, align 4
  %131 = call i32 @MD_NTSC_RGB_OUT(i32 7, i32 %130)
  br label %132

132:                                              ; preds = %59
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %14, align 4
  br label %56

135:                                              ; preds = %56
  %136 = load i32*, i32** %6, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %8, align 8
  %140 = load i8, i8* %138, align 1
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @MD_NTSC_ADJ_IN(i32 %143)
  %145 = call i32 @MD_NTSC_COLOR_IN(i32 0, i32* %136, i32 %144)
  %146 = load i32*, i32** %13, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %13, align 8
  %148 = load i32, i32* %146, align 4
  %149 = call i32 @MD_NTSC_RGB_OUT(i32 0, i32 %148)
  %150 = load i32*, i32** %13, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %13, align 8
  %152 = load i32, i32* %150, align 4
  %153 = call i32 @MD_NTSC_RGB_OUT(i32 1, i32 %152)
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @MD_NTSC_COLOR_IN(i32 1, i32* %154, i32 %155)
  %157 = load i32*, i32** %13, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %13, align 8
  %159 = load i32, i32* %157, align 4
  %160 = call i32 @MD_NTSC_RGB_OUT(i32 2, i32 %159)
  %161 = load i32*, i32** %13, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %13, align 8
  %163 = load i32, i32* %161, align 4
  %164 = call i32 @MD_NTSC_RGB_OUT(i32 3, i32 %163)
  %165 = load i32*, i32** %6, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @MD_NTSC_COLOR_IN(i32 2, i32* %165, i32 %166)
  %168 = load i32*, i32** %13, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %13, align 8
  %170 = load i32, i32* %168, align 4
  %171 = call i32 @MD_NTSC_RGB_OUT(i32 4, i32 %170)
  %172 = load i32*, i32** %13, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %13, align 8
  %174 = load i32, i32* %172, align 4
  %175 = call i32 @MD_NTSC_RGB_OUT(i32 5, i32 %174)
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @MD_NTSC_COLOR_IN(i32 3, i32* %176, i32 %177)
  %179 = load i32*, i32** %13, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %13, align 8
  %181 = load i32, i32* %179, align 4
  %182 = call i32 @MD_NTSC_RGB_OUT(i32 6, i32 %181)
  %183 = load i32*, i32** %13, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %13, align 8
  %185 = load i32, i32* %183, align 4
  %186 = call i32 @MD_NTSC_RGB_OUT(i32 7, i32 %185)
  ret void
}

declare dso_local i32 @MD_NTSC_BEGIN_ROW(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @MD_NTSC_ADJ_IN(i32) #1

declare dso_local i32 @MD_NTSC_COLOR_IN(i32, i32*, i32) #1

declare dso_local i32 @MD_NTSC_RGB_OUT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
