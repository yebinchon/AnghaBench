; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzGetCurrentFileInfo64.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_compat.c_unzGetCurrentFileInfo64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i32*, i32, i32*, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MZ_OK = common dso_local global i64 0, align 8
@UNZ_PARAMERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unzGetCurrentFileInfo64(i64 %0, %struct.TYPE_6__* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %10, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %22 = load i64, i64* %10, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %19, align 8
  store i64 0, i64* %20, align 8
  %24 = load i64, i64* @MZ_OK, align 8
  store i64 %24, i64* %21, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = load i32, i32* @UNZ_PARAMERROR, align 4
  store i32 %28, i32* %9, align 4
  br label %217

29:                                               ; preds = %8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @mz_zip_entry_get_info(i32 %32, %struct.TYPE_7__** %19)
  store i64 %33, i64* %21, align 8
  %34 = load i64, i64* %21, align 8
  %35 = load i64, i64* @MZ_OK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %214

37:                                               ; preds = %29
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %214

40:                                               ; preds = %37
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 16
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 13
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 15
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 14
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 13
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mz_zip_time_t_to_dos_date(i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 7
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load i64, i64* %13, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %40
  %117 = load i8*, i8** %12, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %150

119:                                              ; preds = %116
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 5
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %150

124:                                              ; preds = %119
  %125 = load i64, i64* %13, align 8
  store i64 %125, i64* %20, align 8
  %126 = load i64, i64* %20, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %20, align 8
  br label %135

135:                                              ; preds = %131, %124
  %136 = load i8*, i8** %12, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* %20, align 8
  %141 = call i32 @memcpy(i8* %136, i32* %139, i64 %140)
  %142 = load i64, i64* %20, align 8
  %143 = load i64, i64* %13, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %135
  %146 = load i8*, i8** %12, align 8
  %147 = load i64, i64* %20, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8 0, i8* %148, align 1
  br label %149

149:                                              ; preds = %145, %135
  br label %150

150:                                              ; preds = %149, %119, %116, %40
  %151 = load i64, i64* %15, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %150
  %154 = load i8*, i8** %14, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %176

156:                                              ; preds = %153
  %157 = load i64, i64* %15, align 8
  store i64 %157, i64* %20, align 8
  %158 = load i64, i64* %20, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %20, align 8
  br label %167

167:                                              ; preds = %163, %156
  %168 = load i8*, i8** %14, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i32*
  %174 = load i64, i64* %20, align 8
  %175 = call i32 @memcpy(i8* %168, i32* %173, i64 %174)
  br label %176

176:                                              ; preds = %167, %153, %150
  %177 = load i64, i64* %17, align 8
  %178 = icmp sgt i64 %177, 0
  br i1 %178, label %179, label %213

179:                                              ; preds = %176
  %180 = load i8*, i8** %16, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %213

182:                                              ; preds = %179
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %213

187:                                              ; preds = %182
  %188 = load i64, i64* %17, align 8
  store i64 %188, i64* %20, align 8
  %189 = load i64, i64* %20, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %189, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %20, align 8
  br label %198

198:                                              ; preds = %194, %187
  %199 = load i8*, i8** %16, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* %20, align 8
  %204 = call i32 @memcpy(i8* %199, i32* %202, i64 %203)
  %205 = load i64, i64* %20, align 8
  %206 = load i64, i64* %17, align 8
  %207 = icmp slt i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %198
  %209 = load i8*, i8** %16, align 8
  %210 = load i64, i64* %20, align 8
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8 0, i8* %211, align 1
  br label %212

212:                                              ; preds = %208, %198
  br label %213

213:                                              ; preds = %212, %182, %179, %176
  br label %214

214:                                              ; preds = %213, %37, %29
  %215 = load i64, i64* %21, align 8
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %214, %27
  %218 = load i32, i32* %9, align 4
  ret i32 %218
}

declare dso_local i64 @mz_zip_entry_get_info(i32, %struct.TYPE_7__**) #1

declare dso_local i32 @mz_zip_time_t_to_dos_date(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
