; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_compressor_backing_file.c_vnode_trim_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_compressor_backing_file.c_vnode_trim_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.trim_list = type { i64, i64, %struct.trim_list* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, i32 }

@MNT_IOFLAGS_UNMAP_SUPPORTED = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@MAX_BATCH_TO_TRIM = common dso_local global i32 0, align 4
@MNT_IOFLAGS_CSUNMAP_SUPPORTED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ROUTE_ONLY = common dso_local global i32 0, align 4
@VNODE_READ = common dso_local global i32 0, align 4
@VNODE_BLOCKMAP_NO_TRACK = common dso_local global i32 0, align 4
@_DKIOCCSUNMAP = common dso_local global i32 0, align 4
@DKIOCUNMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_trim_list(%struct.TYPE_12__* %0, %struct.trim_list* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.trim_list*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.trim_list* %1, %struct.trim_list** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MNT_IOFLAGS_UNMAP_SUPPORTED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOTSUP, align 4
  store i32 %29, i32* %4, align 4
  br label %207

30:                                               ; preds = %3
  %31 = load %struct.trim_list*, %struct.trim_list** %6, align 8
  %32 = icmp eq %struct.trim_list* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %207

34:                                               ; preds = %30
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load %struct.vnode*, %struct.vnode** %38, align 8
  store %struct.vnode* %39, %struct.vnode** %11, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @MAX_BATCH_TO_TRIM, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 16, %46
  %48 = trunc i64 %47 to i32
  %49 = call %struct.TYPE_14__* @kalloc(i32 %48)
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %12, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MNT_IOFLAGS_CSUNMAP_SUPPORTED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %34
  %59 = call i32 @memset(%struct.TYPE_13__* %14, i32 0, i32 24)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @TRUE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @ROUTE_ONLY, align 4
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %58
  br label %73

69:                                               ; preds = %34
  %70 = call i32 @memset(%struct.TYPE_13__* %13, i32 0, i32 24)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %72, align 8
  br label %73

73:                                               ; preds = %69, %68
  br label %74

74:                                               ; preds = %165, %73
  %75 = load %struct.trim_list*, %struct.trim_list** %6, align 8
  %76 = icmp ne %struct.trim_list* %75, null
  br i1 %76, label %77, label %169

77:                                               ; preds = %74
  %78 = load %struct.trim_list*, %struct.trim_list** %6, align 8
  %79 = getelementptr inbounds %struct.trim_list, %struct.trim_list* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %19, align 8
  %81 = load %struct.trim_list*, %struct.trim_list** %6, align 8
  %82 = getelementptr inbounds %struct.trim_list, %struct.trim_list* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %84

84:                                               ; preds = %155, %77
  %85 = load i64, i64* %17, align 8
  %86 = load %struct.trim_list*, %struct.trim_list** %6, align 8
  %87 = getelementptr inbounds %struct.trim_list, %struct.trim_list* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %165

90:                                               ; preds = %84
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %18, align 8
  %94 = load i32, i32* @VNODE_READ, align 4
  %95 = load i32, i32* @VNODE_BLOCKMAP_NO_TRACK, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @VNOP_BLOCKMAP(%struct.TYPE_12__* %91, i64 %92, i64 %93, i32* %15, i64* %16, i32* null, i32 %96, i32* null)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %199

101:                                              ; preds = %90
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %121

104:                                              ; preds = %101
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  store i32 %107, i32* %112, align 8
  %113 = load i64, i64* %16, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  store i64 %113, i64* %118, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %104, %101
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @MAX_BATCH_TO_TRIM, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %155

125:                                              ; preds = %121
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @MNT_IOFLAGS_CSUNMAP_SUPPORTED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %125
  %135 = load i32, i32* %9, align 4
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 %135, i32* %136, align 8
  %137 = load %struct.vnode*, %struct.vnode** %11, align 8
  %138 = load i32, i32* @_DKIOCCSUNMAP, align 4
  %139 = ptrtoint %struct.TYPE_13__* %14 to i32
  %140 = call i32 (...) @vfs_context_kernel()
  %141 = call i32 @VNOP_IOCTL(%struct.vnode* %137, i32 %138, i32 %139, i32 0, i32 %140)
  store i32 %141, i32* %8, align 4
  br label %150

142:                                              ; preds = %125
  %143 = load i32, i32* %9, align 4
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %143, i32* %144, align 8
  %145 = load %struct.vnode*, %struct.vnode** %11, align 8
  %146 = load i32, i32* @DKIOCUNMAP, align 4
  %147 = ptrtoint %struct.TYPE_13__* %13 to i32
  %148 = call i32 (...) @vfs_context_kernel()
  %149 = call i32 @VNOP_IOCTL(%struct.vnode* %145, i32 %146, i32 %147, i32 0, i32 %148)
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %142, %134
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %199

154:                                              ; preds = %150
  store i32 0, i32* %9, align 4
  br label %155

155:                                              ; preds = %154, %121
  %156 = load i64, i64* %16, align 8
  %157 = load i64, i64* %17, align 8
  %158 = add i64 %157, %156
  store i64 %158, i64* %17, align 8
  %159 = load i64, i64* %16, align 8
  %160 = load i64, i64* %19, align 8
  %161 = add i64 %160, %159
  store i64 %161, i64* %19, align 8
  %162 = load i64, i64* %16, align 8
  %163 = load i64, i64* %18, align 8
  %164 = sub i64 %163, %162
  store i64 %164, i64* %18, align 8
  br label %84

165:                                              ; preds = %84
  %166 = load %struct.trim_list*, %struct.trim_list** %6, align 8
  %167 = getelementptr inbounds %struct.trim_list, %struct.trim_list* %166, i32 0, i32 2
  %168 = load %struct.trim_list*, %struct.trim_list** %167, align 8
  store %struct.trim_list* %168, %struct.trim_list** %6, align 8
  br label %74

169:                                              ; preds = %74
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %198

172:                                              ; preds = %169
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @MNT_IOFLAGS_CSUNMAP_SUPPORTED, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %172
  %182 = load i32, i32* %9, align 4
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 %182, i32* %183, align 8
  %184 = load %struct.vnode*, %struct.vnode** %11, align 8
  %185 = load i32, i32* @_DKIOCCSUNMAP, align 4
  %186 = ptrtoint %struct.TYPE_13__* %14 to i32
  %187 = call i32 (...) @vfs_context_kernel()
  %188 = call i32 @VNOP_IOCTL(%struct.vnode* %184, i32 %185, i32 %186, i32 0, i32 %187)
  store i32 %188, i32* %8, align 4
  br label %197

189:                                              ; preds = %172
  %190 = load i32, i32* %9, align 4
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %190, i32* %191, align 8
  %192 = load %struct.vnode*, %struct.vnode** %11, align 8
  %193 = load i32, i32* @DKIOCUNMAP, align 4
  %194 = ptrtoint %struct.TYPE_13__* %13 to i32
  %195 = call i32 (...) @vfs_context_kernel()
  %196 = call i32 @VNOP_IOCTL(%struct.vnode* %192, i32 %193, i32 %194, i32 0, i32 %195)
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %189, %181
  br label %198

198:                                              ; preds = %197, %169
  br label %199

199:                                              ; preds = %198, %153, %100
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %201 = load i32, i32* @MAX_BATCH_TO_TRIM, align 4
  %202 = sext i32 %201 to i64
  %203 = mul i64 16, %202
  %204 = trunc i64 %203 to i32
  %205 = call i32 @kfree(%struct.TYPE_14__* %200, i32 %204)
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %199, %33, %28
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local %struct.TYPE_14__* @kalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @VNOP_BLOCKMAP(%struct.TYPE_12__*, i64, i64, i32*, i64*, i32*, i32, i32*) #1

declare dso_local i32 @VNOP_IOCTL(%struct.vnode*, i32, i32, i32, i32) #1

declare dso_local i32 @vfs_context_kernel(...) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
