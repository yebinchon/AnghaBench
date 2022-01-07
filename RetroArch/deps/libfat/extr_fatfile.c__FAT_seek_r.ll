; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatfile.c__FAT_seek_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_fatfile.c__FAT_seek_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i8* }
%struct.TYPE_7__ = type { i32, i64, i64, i64, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i32, i64 }

@EBADF = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i8* null, align 8
@EOVERFLOW = common dso_local global i8* null, align 8
@CLUSTER_FREE = common dso_local global i64 0, align 8
@CLUSTER_EOF = common dso_local global i64 0, align 8
@FILE_MAX_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_seek_r(%struct._reent* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._reent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %10, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %4
  %28 = load i8*, i8** @EBADF, align 8
  %29 = load %struct._reent*, %struct._reent** %6, align 8
  %30 = getelementptr inbounds %struct._reent, %struct._reent* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  store i32 -1, i32* %5, align 4
  br label %236

31:                                               ; preds = %22
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %11, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = call i32 @_FAT_lock(i32* %36)
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %55 [
    i32 128, label %39
    i32 130, label %41
    i32 129, label %48
  ]

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %15, align 4
  br label %62

41:                                               ; preds = %31
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %15, align 4
  br label %62

48:                                               ; preds = %31
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %15, align 4
  br label %62

55:                                               ; preds = %31
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = call i32 @_FAT_unlock(i32* %57)
  %59 = load i8*, i8** @EINVAL, align 8
  %60 = load %struct._reent*, %struct._reent** %6, align 8
  %61 = getelementptr inbounds %struct._reent, %struct._reent* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  store i32 -1, i32* %5, align 4
  br label %236

62:                                               ; preds = %48, %41, %39
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = call i32 @_FAT_unlock(i32* %70)
  %72 = load i8*, i8** @EOVERFLOW, align 8
  %73 = load %struct._reent*, %struct._reent** %6, align 8
  %74 = getelementptr inbounds %struct._reent, %struct._reent* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  store i32 -1, i32* %5, align 4
  br label %236

75:                                               ; preds = %65, %62
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = call i32 @_FAT_unlock(i32* %80)
  %82 = load i8*, i8** @EINVAL, align 8
  %83 = load %struct._reent*, %struct._reent** %6, align 8
  %84 = getelementptr inbounds %struct._reent, %struct._reent* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  store i32 -1, i32* %5, align 4
  br label %236

85:                                               ; preds = %75
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp sle i64 %88, %91
  br i1 %92, label %93, label %227

93:                                               ; preds = %85
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CLUSTER_FREE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %227

99:                                               ; preds = %93
  %100 = load i64, i64* %16, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sdiv i64 %100, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %14, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %16, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %109, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %99
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sdiv i64 %117, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %17, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %114
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %17, align 4
  br label %134

134:                                              ; preds = %131, %114
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %14, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %14, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %12, align 8
  br label %142

142:                                              ; preds = %134, %99
  %143 = load i64, i64* %16, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = srem i64 %143, %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sdiv i64 %147, %150
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  store i64 %151, i64* %154, align 8
  %155 = load i64, i64* %16, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = srem i64 %155, %158
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store i64 %159, i64* %162, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %164 = load i64, i64* %12, align 8
  %165 = call i64 @_FAT_fat_nextCluster(%struct.TYPE_6__* %163, i64 %164)
  store i64 %165, i64* %13, align 8
  br label %166

166:                                              ; preds = %179, %142
  %167 = load i32, i32* %14, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* @CLUSTER_FREE, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i64, i64* %13, align 8
  %175 = load i64, i64* @CLUSTER_EOF, align 8
  %176 = icmp ne i64 %174, %175
  br label %177

177:                                              ; preds = %173, %169, %166
  %178 = phi i1 [ false, %169 ], [ false, %166 ], [ %176, %173 ]
  br i1 %178, label %179, label %186

179:                                              ; preds = %177
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %14, align 4
  %182 = load i64, i64* %13, align 8
  store i64 %182, i64* %12, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %184 = load i64, i64* %12, align 8
  %185 = call i64 @_FAT_fat_nextCluster(%struct.TYPE_6__* %183, i64 %184)
  store i64 %185, i64* %13, align 8
  br label %166

186:                                              ; preds = %177
  %187 = load i32, i32* %14, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %222

189:                                              ; preds = %186
  %190 = load i32, i32* %14, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %214

192:                                              ; preds = %189
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %16, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %214

198:                                              ; preds = %192
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %198
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  store i64 %207, i64* %210, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  store i64 0, i64* %213, align 8
  br label %221

214:                                              ; preds = %198, %192, %189
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 2
  %217 = call i32 @_FAT_unlock(i32* %216)
  %218 = load i8*, i8** @EINVAL, align 8
  %219 = load %struct._reent*, %struct._reent** %6, align 8
  %220 = getelementptr inbounds %struct._reent, %struct._reent* %219, i32 0, i32 0
  store i8* %218, i8** %220, align 8
  store i32 -1, i32* %5, align 4
  br label %236

221:                                              ; preds = %204
  br label %222

222:                                              ; preds = %221, %186
  %223 = load i64, i64* %12, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  store i64 %223, i64* %226, align 8
  br label %227

227:                                              ; preds = %222, %93, %85
  %228 = load i64, i64* %16, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 2
  %233 = call i32 @_FAT_unlock(i32* %232)
  %234 = load i64, i64* %16, align 8
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %5, align 4
  br label %236

236:                                              ; preds = %227, %214, %78, %68, %55, %27
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i32 @_FAT_lock(i32*) #1

declare dso_local i32 @_FAT_unlock(i32*) #1

declare dso_local i64 @_FAT_fat_nextCluster(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
