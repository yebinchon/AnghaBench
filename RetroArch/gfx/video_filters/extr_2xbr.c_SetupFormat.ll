; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_2xbr.c_SetupFormat.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_2xbr.c_SetupFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_data = type { i32*, i32*, i32* }

@RED_MASK565 = common dso_local global i32 0, align 4
@GREEN_MASK565 = common dso_local global i32 0, align 4
@BLUE_MASK565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @SetupFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetupFormat(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.filter_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.filter_data*
  store %struct.filter_data* %12, %struct.filter_data** %4, align 8
  %13 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %14 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %18 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 8, i32* %20, align 4
  %21 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %22 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 16, i32* %24, align 4
  %25 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %26 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 25, i32* %28, align 4
  %29 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %30 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  store i32 33, i32* %32, align 4
  %33 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %34 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  store i32 41, i32* %36, align 4
  %37 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %38 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  store i32 49, i32* %40, align 4
  %41 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %42 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 7
  store i32 58, i32* %44, align 4
  %45 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %46 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 8
  store i32 66, i32* %48, align 4
  %49 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %50 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 9
  store i32 74, i32* %52, align 4
  %53 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %54 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 10
  store i32 82, i32* %56, align 4
  %57 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %58 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 11
  store i32 90, i32* %60, align 4
  %61 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %62 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 12
  store i32 99, i32* %64, align 4
  %65 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %66 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 13
  store i32 107, i32* %68, align 4
  %69 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %70 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 14
  store i32 115, i32* %72, align 4
  %73 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %74 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 15
  store i32 123, i32* %76, align 4
  %77 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %78 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 16
  store i32 132, i32* %80, align 4
  %81 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %82 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 17
  store i32 140, i32* %84, align 4
  %85 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %86 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 18
  store i32 148, i32* %88, align 4
  %89 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %90 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 19
  store i32 156, i32* %92, align 4
  %93 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %94 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 20
  store i32 165, i32* %96, align 4
  %97 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %98 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 21
  store i32 173, i32* %100, align 4
  %101 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %102 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 22
  store i32 181, i32* %104, align 4
  %105 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %106 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 23
  store i32 189, i32* %108, align 4
  %109 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %110 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 24
  store i32 197, i32* %112, align 4
  %113 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %114 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 25
  store i32 206, i32* %116, align 4
  %117 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %118 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 26
  store i32 214, i32* %120, align 4
  %121 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %122 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 27
  store i32 222, i32* %124, align 4
  %125 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %126 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 28
  store i32 230, i32* %128, align 4
  %129 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %130 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 29
  store i32 239, i32* %132, align 4
  %133 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %134 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 30
  store i32 247, i32* %136, align 4
  %137 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %138 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 31
  store i32 255, i32* %140, align 4
  %141 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %142 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 0, i32* %144, align 4
  %145 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %146 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 4, i32* %148, align 4
  %149 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %150 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  store i32 8, i32* %152, align 4
  %153 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %154 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  store i32 12, i32* %156, align 4
  %157 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %158 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  store i32 16, i32* %160, align 4
  %161 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %162 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 5
  store i32 20, i32* %164, align 4
  %165 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %166 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 6
  store i32 24, i32* %168, align 4
  %169 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %170 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 7
  store i32 28, i32* %172, align 4
  %173 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %174 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 8
  store i32 32, i32* %176, align 4
  %177 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %178 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 9
  store i32 36, i32* %180, align 4
  %181 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %182 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 10
  store i32 40, i32* %184, align 4
  %185 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %186 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 11
  store i32 45, i32* %188, align 4
  %189 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %190 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 12
  store i32 49, i32* %192, align 4
  %193 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %194 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 13
  store i32 53, i32* %196, align 4
  %197 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %198 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 14
  store i32 57, i32* %200, align 4
  %201 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %202 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 15
  store i32 61, i32* %204, align 4
  %205 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %206 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 16
  store i32 65, i32* %208, align 4
  %209 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %210 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 17
  store i32 69, i32* %212, align 4
  %213 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %214 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 18
  store i32 73, i32* %216, align 4
  %217 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %218 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 19
  store i32 77, i32* %220, align 4
  %221 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %222 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 20
  store i32 81, i32* %224, align 4
  %225 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %226 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 21
  store i32 85, i32* %228, align 4
  %229 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %230 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 22
  store i32 89, i32* %232, align 4
  %233 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %234 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 23
  store i32 93, i32* %236, align 4
  %237 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %238 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 24
  store i32 97, i32* %240, align 4
  %241 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %242 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 25
  store i32 101, i32* %244, align 4
  %245 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %246 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 26
  store i32 105, i32* %248, align 4
  %249 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %250 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 27
  store i32 109, i32* %252, align 4
  %253 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %254 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 28
  store i32 113, i32* %256, align 4
  %257 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %258 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 29
  store i32 117, i32* %260, align 4
  %261 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %262 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 30
  store i32 121, i32* %264, align 4
  %265 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %266 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 31
  store i32 125, i32* %268, align 4
  %269 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %270 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 32
  store i32 130, i32* %272, align 4
  %273 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %274 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 33
  store i32 134, i32* %276, align 4
  %277 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %278 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 34
  store i32 138, i32* %280, align 4
  %281 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %282 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 35
  store i32 142, i32* %284, align 4
  %285 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %286 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 36
  store i32 146, i32* %288, align 4
  %289 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %290 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 37
  store i32 150, i32* %292, align 4
  %293 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %294 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 38
  store i32 154, i32* %296, align 4
  %297 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %298 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 39
  store i32 158, i32* %300, align 4
  %301 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %302 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 40
  store i32 162, i32* %304, align 4
  %305 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %306 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 41
  store i32 166, i32* %308, align 4
  %309 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %310 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 42
  store i32 170, i32* %312, align 4
  %313 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %314 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 43
  store i32 174, i32* %316, align 4
  %317 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %318 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 44
  store i32 178, i32* %320, align 4
  %321 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %322 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 45
  store i32 182, i32* %324, align 4
  %325 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %326 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 46
  store i32 186, i32* %328, align 4
  %329 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %330 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 47
  store i32 190, i32* %332, align 4
  %333 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %334 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 48
  store i32 194, i32* %336, align 4
  %337 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %338 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 49
  store i32 198, i32* %340, align 4
  %341 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %342 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %341, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 50
  store i32 202, i32* %344, align 4
  %345 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %346 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 51
  store i32 206, i32* %348, align 4
  %349 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %350 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %349, i32 0, i32 1
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 52
  store i32 210, i32* %352, align 4
  %353 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %354 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %353, i32 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 53
  store i32 215, i32* %356, align 4
  %357 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %358 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %357, i32 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 54
  store i32 219, i32* %360, align 4
  %361 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %362 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 55
  store i32 223, i32* %364, align 4
  %365 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %366 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %365, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 56
  store i32 227, i32* %368, align 4
  %369 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %370 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %369, i32 0, i32 1
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 57
  store i32 231, i32* %372, align 4
  %373 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %374 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %373, i32 0, i32 1
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 58
  store i32 235, i32* %376, align 4
  %377 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %378 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %377, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 59
  store i32 239, i32* %380, align 4
  %381 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %382 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 60
  store i32 243, i32* %384, align 4
  %385 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %386 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %385, i32 0, i32 1
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 61
  store i32 247, i32* %388, align 4
  %389 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %390 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %389, i32 0, i32 1
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 62
  store i32 251, i32* %392, align 4
  %393 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %394 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %393, i32 0, i32 1
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 63
  store i32 255, i32* %396, align 4
  store i32 0, i32* %3, align 4
  br label %397

397:                                              ; preds = %465, %1
  %398 = load i32, i32* %3, align 4
  %399 = icmp slt i32 %398, 65536
  br i1 %399, label %400, label %468

400:                                              ; preds = %397
  %401 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %402 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %401, i32 0, i32 0
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %3, align 4
  %405 = load i32, i32* @RED_MASK565, align 4
  %406 = and i32 %404, %405
  %407 = ashr i32 %406, 11
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %403, i64 %408
  %410 = load i32, i32* %409, align 4
  store i32 %410, i32* %5, align 4
  %411 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %412 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %411, i32 0, i32 1
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %3, align 4
  %415 = load i32, i32* @GREEN_MASK565, align 4
  %416 = and i32 %414, %415
  %417 = ashr i32 %416, 5
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %413, i64 %418
  %420 = load i32, i32* %419, align 4
  store i32 %420, i32* %6, align 4
  %421 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %422 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %421, i32 0, i32 0
  %423 = load i32*, i32** %422, align 8
  %424 = load i32, i32* %3, align 4
  %425 = load i32, i32* @BLUE_MASK565, align 4
  %426 = and i32 %424, %425
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %423, i64 %427
  %429 = load i32, i32* %428, align 4
  store i32 %429, i32* %7, align 4
  %430 = load i32, i32* %5, align 4
  %431 = shl i32 %430, 4
  %432 = load i32, i32* %6, align 4
  %433 = shl i32 %432, 5
  %434 = add nsw i32 %431, %433
  %435 = load i32, i32* %7, align 4
  %436 = shl i32 %435, 2
  %437 = add nsw i32 %434, %436
  store i32 %437, i32* %8, align 4
  %438 = load i32, i32* %5, align 4
  %439 = sub nsw i32 0, %438
  %440 = load i32, i32* %6, align 4
  %441 = shl i32 %440, 1
  %442 = sub nsw i32 %439, %441
  %443 = load i32, i32* %7, align 4
  %444 = shl i32 %443, 2
  %445 = add nsw i32 %442, %444
  store i32 %445, i32* %9, align 4
  %446 = load i32, i32* %5, align 4
  %447 = shl i32 %446, 1
  %448 = load i32, i32* %6, align 4
  %449 = shl i32 %448, 1
  %450 = sub nsw i32 %447, %449
  %451 = load i32, i32* %7, align 4
  %452 = ashr i32 %451, 1
  %453 = sub nsw i32 %450, %452
  store i32 %453, i32* %10, align 4
  %454 = load i32, i32* %8, align 4
  %455 = load i32, i32* %9, align 4
  %456 = add nsw i32 %454, %455
  %457 = load i32, i32* %10, align 4
  %458 = add nsw i32 %456, %457
  %459 = load %struct.filter_data*, %struct.filter_data** %4, align 8
  %460 = getelementptr inbounds %struct.filter_data, %struct.filter_data* %459, i32 0, i32 2
  %461 = load i32*, i32** %460, align 8
  %462 = load i32, i32* %3, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  store i32 %458, i32* %464, align 4
  br label %465

465:                                              ; preds = %400
  %466 = load i32, i32* %3, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %3, align 4
  br label %397

468:                                              ; preds = %397
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
