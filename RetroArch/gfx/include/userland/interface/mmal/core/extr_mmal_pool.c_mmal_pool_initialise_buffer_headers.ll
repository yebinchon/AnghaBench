; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_pool.c_mmal_pool_initialise_buffer_headers.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_pool.c_mmal_pool_initialise_buffer_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_8__*, i64, i32* }
%struct.TYPE_8__ = type { i32, i64, i32 (i32, i32*)*, i32, i32*, i8*, i32 }
%struct.TYPE_10__ = type { i32, i64, i32 (i32, i32*)*, i32, i64 (i32, i64)* }

@ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"allocating %u bytes for payload %u/%u\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate payload %u/%u\00", align 1
@MMAL_ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"freeing %u bytes for payload %u/%u\00", align 1
@mmal_pool_buffer_header_release = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i64)* @mmal_pool_initialise_buffer_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmal_pool_initialise_buffer_headers(%struct.TYPE_9__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = bitcast %struct.TYPE_9__* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %8, align 8
  store i32* null, i32** %10, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  %17 = bitcast %struct.TYPE_11__** %16 to i32*
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @ALIGN, align 4
  %23 = call i32 @ROUND_UP(i32 %21, i32 %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %17, i64 %24
  %26 = bitcast i32* %25 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %9, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %192, %3
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %195

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_11__* @mmal_buffer_header_initialise(%struct.TYPE_11__* %35, i32 %38)
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %9, align 8
  br label %40

40:                                               ; preds = %34, %31
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 4
  %48 = load i64 (i32, i64)*, i64 (i32, i64)** %47, align 8
  %49 = icmp ne i64 (i32, i64)* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 4
  %59 = load i64 (i32, i64)*, i64 (i32, i64)** %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i64 %59(i32 %62, i64 %65)
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %50
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* @MMAL_ENOMEM, align 4
  store i32 %74, i32* %4, align 4
  br label %197

75:                                               ; preds = %50
  br label %123

76:                                               ; preds = %45, %40
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32 (i32, i32*)*, i32 (i32, i32*)** %80, align 8
  %82 = icmp ne i32 (i32, i32*)* %81, null
  br i1 %82, label %83, label %122

83:                                               ; preds = %76
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %122

90:                                               ; preds = %83
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %90
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %102, i32 %103, i32 %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32 (i32, i32*)*, i32 (i32, i32*)** %109, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 %110(i32 %115, i32* %120)
  br label %122

122:                                              ; preds = %97, %90, %83, %76
  br label %123

123:                                              ; preds = %122, %75
  %124 = load i32*, i32** %10, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  store i32* %124, i32** %126, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load i32, i32* @mmal_pool_buffer_header_release, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 6
  store i32 %132, i32* %136, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = bitcast %struct.TYPE_9__* %137 to i8*
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 5
  store i8* %138, i8** %142, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 4
  store i32* %147, i32** %151, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  store i32 %154, i32* %158, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i32 (i32, i32*)*, i32 (i32, i32*)** %160, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  store i32 (i32, i32*)* %161, i32 (i32, i32*)** %165, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i64 %168, i64* %172, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %176, i64 %178
  store %struct.TYPE_11__* %173, %struct.TYPE_11__** %179, align 8
  %180 = load i32, i32* %11, align 4
  %181 = add i32 %180, 1
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %185 = bitcast %struct.TYPE_11__* %184 to i32*
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  %191 = bitcast i32* %190 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %191, %struct.TYPE_11__** %9, align 8
  br label %192

192:                                              ; preds = %123
  %193 = load i32, i32* %11, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %11, align 4
  br label %27

195:                                              ; preds = %27
  %196 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %195, %70
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @ROUND_UP(i32, i32) #1

declare dso_local %struct.TYPE_11__* @mmal_buffer_header_initialise(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @LOG_TRACE(i8*, i64, i32, i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
