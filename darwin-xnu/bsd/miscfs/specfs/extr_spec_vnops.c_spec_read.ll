; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, %struct.uio*, i32)*, i32 }
%struct.uio = type { i64, i64, i32 }
%struct._throttle_io_info_t = type { i32 }
%struct.vnop_read_args = type { i32, %struct.uio*, %struct.vnode* }
%struct.vnode = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.buf = type { i32 }

@cdevsw = common dso_local global %struct.TYPE_6__* null, align 8
@D_DISK = common dso_local global i32 0, align 4
@_throttle_io_info = common dso_local global %struct._throttle_io_info_t* null, align 8
@TRUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"spec_read type\00", align 1
@UIO_READ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_read(%struct.vnop_read_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_read_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct._throttle_io_info_t*, align 8
  %17 = alloca i32, align 4
  store %struct.vnop_read_args* %0, %struct.vnop_read_args** %3, align 8
  %18 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %19 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %18, i32 0, i32 2
  %20 = load %struct.vnode*, %struct.vnode** %19, align 8
  store %struct.vnode* %20, %struct.vnode** %4, align 8
  %21 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %22 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %21, i32 0, i32 1
  %23 = load %struct.uio*, %struct.uio** %22, align 8
  store %struct.uio* %23, %struct.uio** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.uio*, %struct.uio** %5, align 8
  %25 = call i64 @uio_resid(%struct.uio* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %243

28:                                               ; preds = %1
  %29 = load %struct.vnode*, %struct.vnode** %4, align 8
  %30 = getelementptr inbounds %struct.vnode, %struct.vnode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %240 [
    i32 128, label %32
    i32 129, label %94
  ]

32:                                               ; preds = %28
  store %struct._throttle_io_info_t* null, %struct._throttle_io_info_t** %16, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cdevsw, align 8
  %34 = load %struct.vnode*, %struct.vnode** %4, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @major(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @D_DISK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %32
  %44 = load %struct.vnode*, %struct.vnode** %4, align 8
  %45 = getelementptr inbounds %struct.vnode, %struct.vnode* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %43
  %52 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** @_throttle_io_info, align 8
  %53 = load %struct.vnode*, %struct.vnode** %4, align 8
  %54 = getelementptr inbounds %struct.vnode, %struct.vnode* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %52, i64 %58
  store %struct._throttle_io_info_t* %59, %struct._throttle_io_info_t** %16, align 8
  %60 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %16, align 8
  %61 = load %struct.vnode*, %struct.vnode** %4, align 8
  %62 = getelementptr inbounds %struct.vnode, %struct.vnode* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TRUE, align 4
  %68 = call i32 @throttle_info_update_internal(%struct._throttle_io_info_t* %60, i32* null, i32 0, i32 %66, i32 %67, i32* null)
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %51, %43, %32
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cdevsw, align 8
  %71 = load %struct.vnode*, %struct.vnode** %4, align 8
  %72 = getelementptr inbounds %struct.vnode, %struct.vnode* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @major(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (i32, %struct.uio*, i32)*, i32 (i32, %struct.uio*, i32)** %76, align 8
  %78 = load %struct.vnode*, %struct.vnode** %4, align 8
  %79 = getelementptr inbounds %struct.vnode, %struct.vnode* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.uio*, %struct.uio** %5, align 8
  %82 = load %struct.vnop_read_args*, %struct.vnop_read_args** %3, align 8
  %83 = getelementptr inbounds %struct.vnop_read_args, %struct.vnop_read_args* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 %77(i32 %80, %struct.uio* %81, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %16, align 8
  %87 = icmp ne %struct._throttle_io_info_t* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %69
  %89 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @throttle_info_end_io_internal(%struct._throttle_io_info_t* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %69
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %2, align 4
  br label %243

94:                                               ; preds = %28
  %95 = load %struct.uio*, %struct.uio** %5, align 8
  %96 = getelementptr inbounds %struct.uio, %struct.uio* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %2, align 4
  br label %243

101:                                              ; preds = %94
  %102 = load %struct.vnode*, %struct.vnode** %4, align 8
  %103 = getelementptr inbounds %struct.vnode, %struct.vnode* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %15, align 4
  %105 = load %struct.vnode*, %struct.vnode** %4, align 8
  %106 = getelementptr inbounds %struct.vnode, %struct.vnode* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @PAGE_SIZE, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %2, align 4
  br label %243

113:                                              ; preds = %101
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sdiv i32 %114, %115
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %10, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = mul nsw i64 %118, %120
  store i64 %121, i64* %9, align 8
  br label %122

122:                                              ; preds = %236, %113
  %123 = load %struct.uio*, %struct.uio** %5, align 8
  %124 = getelementptr inbounds %struct.uio, %struct.uio* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = srem i64 %125, %126
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %13, align 4
  %129 = load %struct.uio*, %struct.uio** %5, align 8
  %130 = getelementptr inbounds %struct.uio, %struct.uio* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = sdiv i64 %131, %133
  %135 = load i64, i64* %10, align 8
  %136 = sub nsw i64 %135, 1
  %137 = xor i64 %136, -1
  %138 = and i64 %134, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %7, align 4
  %140 = load %struct.vnode*, %struct.vnode** %4, align 8
  %141 = getelementptr inbounds %struct.vnode, %struct.vnode* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %10, align 8
  %145 = add nsw i64 %143, %144
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp eq i64 %145, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %122
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %10, align 8
  %153 = add nsw i64 %151, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %8, align 4
  %155 = load %struct.vnode*, %struct.vnode** %4, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i64, i64* %9, align 8
  %158 = trunc i64 %157 to i32
  %159 = bitcast i64* %9 to i32*
  %160 = load i32, i32* @NOCRED, align 4
  %161 = call i32 @buf_breadn(%struct.vnode* %155, i32 %156, i32 %158, i32* %8, i32* %159, i32 1, i32 %160, %struct.buf** %6)
  store i32 %161, i32* %14, align 4
  br label %169

162:                                              ; preds = %122
  %163 = load %struct.vnode*, %struct.vnode** %4, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i64, i64* %9, align 8
  %166 = trunc i64 %165 to i32
  %167 = load i32, i32* @NOCRED, align 4
  %168 = call i32 @buf_bread(%struct.vnode* %163, i32 %164, i32 %166, i32 %167, %struct.buf** %6)
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %162, %149
  %170 = load %struct.vnode*, %struct.vnode** %4, align 8
  %171 = call i32 @vnode_lock(%struct.vnode* %170)
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.vnode*, %struct.vnode** %4, align 8
  %174 = getelementptr inbounds %struct.vnode, %struct.vnode* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.vnode*, %struct.vnode** %4, align 8
  %176 = call i32 @vnode_unlock(%struct.vnode* %175)
  %177 = load i64, i64* %9, align 8
  %178 = load %struct.buf*, %struct.buf** %6, align 8
  %179 = call i32 @buf_resid(%struct.buf* %178)
  %180 = sext i32 %179 to i64
  %181 = sub nsw i64 %177, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %189, label %186

186:                                              ; preds = %169
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %186, %169
  %190 = load i32, i32* %14, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* @EINVAL, align 4
  store i32 %193, i32* %14, align 4
  br label %194

194:                                              ; preds = %192, %189
  %195 = load %struct.buf*, %struct.buf** %6, align 8
  %196 = call i32 @buf_brelse(%struct.buf* %195)
  %197 = load i32, i32* %14, align 4
  store i32 %197, i32* %2, align 4
  br label %243

198:                                              ; preds = %186
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %13, align 4
  %201 = sub nsw i32 %199, %200
  %202 = load %struct.uio*, %struct.uio** %5, align 8
  %203 = call i64 @uio_resid(%struct.uio* %202)
  %204 = call i32 @min(i32 %201, i64 %203)
  store i32 %204, i32* %12, align 4
  %205 = load %struct.buf*, %struct.buf** %6, align 8
  %206 = call i64 @buf_dataptr(%struct.buf* %205)
  %207 = inttoptr i64 %206 to i8*
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.uio*, %struct.uio** %5, align 8
  %213 = call i32 @uiomove(i8* %210, i32 %211, %struct.uio* %212)
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %13, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = load i64, i64* %9, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %198
  %221 = load %struct.buf*, %struct.buf** %6, align 8
  %222 = call i32 @buf_markaged(%struct.buf* %221)
  br label %223

223:                                              ; preds = %220, %198
  %224 = load %struct.buf*, %struct.buf** %6, align 8
  %225 = call i32 @buf_brelse(%struct.buf* %224)
  br label %226

226:                                              ; preds = %223
  %227 = load i32, i32* %14, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %226
  %230 = load %struct.uio*, %struct.uio** %5, align 8
  %231 = call i64 @uio_resid(%struct.uio* %230)
  %232 = icmp sgt i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br label %236

236:                                              ; preds = %233, %229, %226
  %237 = phi i1 [ false, %229 ], [ false, %226 ], [ %235, %233 ]
  br i1 %237, label %122, label %238

238:                                              ; preds = %236
  %239 = load i32, i32* %14, align 4
  store i32 %239, i32* %2, align 4
  br label %243

240:                                              ; preds = %28
  %241 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %242

242:                                              ; preds = %240
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %242, %238, %194, %111, %99, %92, %27
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i64 @uio_resid(%struct.uio*) #1

declare dso_local i64 @major(i32) #1

declare dso_local i32 @throttle_info_update_internal(%struct._throttle_io_info_t*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @throttle_info_end_io_internal(%struct._throttle_io_info_t*, i32) #1

declare dso_local i32 @buf_breadn(%struct.vnode*, i32, i32, i32*, i32*, i32, i32, %struct.buf**) #1

declare dso_local i32 @buf_bread(%struct.vnode*, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @vnode_lock(%struct.vnode*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

declare dso_local i32 @buf_resid(%struct.buf*) #1

declare dso_local i32 @buf_brelse(%struct.buf*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i64 @buf_dataptr(%struct.buf*) #1

declare dso_local i32 @buf_markaged(%struct.buf*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
