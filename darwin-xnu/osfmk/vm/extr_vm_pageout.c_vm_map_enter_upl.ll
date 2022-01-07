; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_map_enter_upl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_map_enter_upl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i32, i32, i32, i64, i32, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32, i32, i32, i32, i8*, i8*, %struct.TYPE_37__*, i64 }
%struct.TYPE_36__ = type { i32, i8*, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_38__ = type { i64 }

@UPL_NULL = common dso_local global %struct.TYPE_39__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@MAX_VECTOR_UPL_ELEMENTS = common dso_local global i32 0, align 4
@UPL_PAGE_LIST_MAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Only %d of the %d sub-upls within the Vector UPL are alread mapped\0A\00", align 1
@KERN_FAILURE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Vector UPL submap allocation failed\0A\00", align 1
@UPL_SHADOWED = common dso_local global i32 0, align 4
@UPL_HAS_BUSY = common dso_local global i32 0, align 4
@UPL_DEVICE_MEMORY = common dso_local global i32 0, align 4
@UPL_IO_WIRE = common dso_local global i32 0, align 4
@UPL_INTERNAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@MEMORY_OBJECT_COPY_NONE = common dso_local global i32 0, align 4
@VM_PAGE_NULL = common dso_local global %struct.TYPE_36__* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"vm_upl_map: page missing\0A\00", align 1
@PAGE_SIZE_64 = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_OSFMK = common dso_local global i32 0, align 4
@VM_PROT_DEFAULT = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4
@VM_FLAGS_FIXED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"vm_map_enter failed for a Vector UPL\0A\00", align 1
@kernel_pmap = common dso_local global i64 0, align 8
@VM_PROT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_map_enter_upl(%struct.TYPE_38__* %0, %struct.TYPE_39__* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_36__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_39__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_38__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_37__*, align 8
  %23 = alloca %struct.TYPE_36__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %5, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %15, align 8
  store i64 0, i64* %16, align 8
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %17, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %27 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %28 = load %struct.TYPE_39__*, %struct.TYPE_39__** @UPL_NULL, align 8
  %29 = icmp eq %struct.TYPE_39__* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %31, i64* %4, align 8
  br label %536

32:                                               ; preds = %3
  %33 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %34 = call i32 @vector_upl_is_valid(%struct.TYPE_39__* %33)
  store i32 %34, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %104

36:                                               ; preds = %32
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %37 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  store %struct.TYPE_39__* %37, %struct.TYPE_39__** %15, align 8
  %38 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %39 = call i32 @upl_lock(%struct.TYPE_39__* %38)
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %64, %36
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @MAX_VECTOR_UPL_ELEMENTS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call %struct.TYPE_39__* @vector_upl_subupl_byindex(%struct.TYPE_39__* %45, i32 %46)
  store %struct.TYPE_39__* %47, %struct.TYPE_39__** %6, align 8
  %48 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %49 = icmp eq %struct.TYPE_39__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %64

51:                                               ; preds = %44
  %52 = load i32, i32* %21, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %21, align 4
  %54 = load i32, i32* @UPL_PAGE_LIST_MAPPED, align 4
  %55 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %20, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %60, %51
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %40

67:                                               ; preds = %40
  %68 = load i32, i32* %20, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %21, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %21, align 4
  %77 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  br label %82

78:                                               ; preds = %70
  %79 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %80 = call i32 @upl_unlock(%struct.TYPE_39__* %79)
  %81 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %81, i64* %4, align 8
  br label %536

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %67
  %84 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %85 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** @FALSE, align 8
  %89 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %90 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %91 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %92 = call i64 @kmem_suballoc(%struct.TYPE_38__* %84, i64* %16, i32 %87, i8* %88, i32 %89, i32 %90, i32 %91, %struct.TYPE_38__** %17)
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @KERN_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %83
  %97 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %83
  %99 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  store %struct.TYPE_38__* %99, %struct.TYPE_38__** %5, align 8
  %100 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %102 = load i64, i64* %16, align 8
  %103 = call i32 @vector_upl_set_submap(%struct.TYPE_39__* %100, %struct.TYPE_38__* %101, i64 %102)
  store i32 0, i32* %14, align 4
  br label %107

104:                                              ; preds = %32
  %105 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %106 = call i32 @upl_lock(%struct.TYPE_39__* %105)
  br label %107

107:                                              ; preds = %104, %98
  br label %108

108:                                              ; preds = %531, %128, %107
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %137

111:                                              ; preds = %108
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @MAX_VECTOR_UPL_ELEMENTS, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i64, i64* %16, align 8
  %117 = load i64*, i64** %7, align 8
  store i64 %116, i64* %117, align 8
  %118 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %119 = call i32 @upl_unlock(%struct.TYPE_39__* %118)
  %120 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %120, i64* %4, align 8
  br label %536

121:                                              ; preds = %111
  %122 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  %125 = call %struct.TYPE_39__* @vector_upl_subupl_byindex(%struct.TYPE_39__* %122, i32 %123)
  store %struct.TYPE_39__* %125, %struct.TYPE_39__** %6, align 8
  %126 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %127 = icmp eq %struct.TYPE_39__* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %108

129:                                              ; preds = %121
  %130 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %131 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %132 = call i32 @vector_upl_get_iostate(%struct.TYPE_39__* %130, %struct.TYPE_39__* %131, i64* %18, i32* %19)
  %133 = load i64, i64* %16, align 8
  %134 = load i64, i64* %18, align 8
  %135 = add nsw i64 %133, %134
  %136 = load i64*, i64** %7, align 8
  store i64 %135, i64* %136, align 8
  br label %149

137:                                              ; preds = %108
  %138 = load i32, i32* @UPL_PAGE_LIST_MAPPED, align 4
  %139 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %146 = call i32 @upl_unlock(%struct.TYPE_39__* %145)
  %147 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %147, i64* %4, align 8
  br label %536

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %148, %129
  %150 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @UPL_SHADOWED, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %369, label %156

156:                                              ; preds = %149
  %157 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @UPL_HAS_BUSY, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %179, label %163

163:                                              ; preds = %156
  %164 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @UPL_DEVICE_MEMORY, align 4
  %168 = load i32, i32* @UPL_IO_WIRE, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %166, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %369, label %172

172:                                              ; preds = %163
  %173 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %173, i32 0, i32 5
  %175 = load %struct.TYPE_37__*, %struct.TYPE_37__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %369, label %179

179:                                              ; preds = %172, %156
  %180 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @UPL_INTERNAL, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %179
  %187 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %188 = ptrtoint %struct.TYPE_39__* %187 to i64
  %189 = add i64 %188, 4
  %190 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @PAGE_SIZE, align 4
  %194 = sdiv i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 4
  %197 = add i64 %189, %196
  %198 = inttoptr i64 %197 to i32*
  store i32* %198, i32** %26, align 8
  br label %204

199:                                              ; preds = %179
  %200 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %201 = ptrtoint %struct.TYPE_39__* %200 to i64
  %202 = add i64 %201, 4
  %203 = inttoptr i64 %202 to i32*
  store i32* %203, i32** %26, align 8
  br label %204

204:                                              ; preds = %199, %186
  %205 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %205, i32 0, i32 5
  %207 = load %struct.TYPE_37__*, %struct.TYPE_37__** %206, align 8
  store %struct.TYPE_37__* %207, %struct.TYPE_37__** %22, align 8
  %208 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call %struct.TYPE_37__* @vm_object_allocate(i32 %210)
  %212 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %212, i32 0, i32 5
  store %struct.TYPE_37__* %211, %struct.TYPE_37__** %213, align 8
  %214 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %214, i32 0, i32 5
  %216 = load %struct.TYPE_37__*, %struct.TYPE_37__** %215, align 8
  %217 = call i32 @vm_object_lock(%struct.TYPE_37__* %216)
  %218 = load %struct.TYPE_37__*, %struct.TYPE_37__** %22, align 8
  %219 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %219, i32 0, i32 5
  %221 = load %struct.TYPE_37__*, %struct.TYPE_37__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %221, i32 0, i32 6
  store %struct.TYPE_37__* %218, %struct.TYPE_37__** %222, align 8
  %223 = load i8*, i8** @TRUE, align 8
  %224 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %224, i32 0, i32 5
  %226 = load %struct.TYPE_37__*, %struct.TYPE_37__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %226, i32 0, i32 5
  store i8* %223, i8** %227, align 8
  %228 = load i8*, i8** @FALSE, align 8
  %229 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %229, i32 0, i32 5
  %231 = load %struct.TYPE_37__*, %struct.TYPE_37__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %231, i32 0, i32 4
  store i8* %228, i8** %232, align 8
  %233 = load i32, i32* @MEMORY_OBJECT_COPY_NONE, align 4
  %234 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %234, i32 0, i32 5
  %236 = load %struct.TYPE_37__*, %struct.TYPE_37__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %236, i32 0, i32 3
  store i32 %233, i32* %237, align 4
  %238 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_37__*, %struct.TYPE_37__** %22, align 8
  %242 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %240, %243
  %245 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %245, i32 0, i32 5
  %247 = load %struct.TYPE_37__*, %struct.TYPE_37__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %247, i32 0, i32 0
  store i32 %244, i32* %248, align 8
  %249 = load %struct.TYPE_37__*, %struct.TYPE_37__** %22, align 8
  %250 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %252, i32 0, i32 5
  %254 = load %struct.TYPE_37__*, %struct.TYPE_37__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %254, i32 0, i32 2
  store i32 %251, i32* %255, align 8
  %256 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %256, i32 0, i32 5
  %258 = load %struct.TYPE_37__*, %struct.TYPE_37__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  store i32 %260, i32* %9, align 4
  store i32 0, i32* %24, align 4
  %261 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* @UPL_SHADOWED, align 4
  %265 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %354, %204
  %270 = load i32, i32* %8, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %364

272:                                              ; preds = %269
  %273 = load i32, i32* %24, align 4
  %274 = load i32, i32* @PAGE_SIZE, align 4
  %275 = sdiv i32 %273, %274
  store i32 %275, i32* %25, align 4
  %276 = load i32, i32* %25, align 4
  %277 = load i32, i32* %24, align 4
  %278 = load i32, i32* @PAGE_SIZE, align 4
  %279 = sdiv i32 %277, %278
  %280 = icmp eq i32 %276, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @assert(i32 %281)
  %283 = load i32*, i32** %26, align 8
  %284 = load i32, i32* %25, align 4
  %285 = lshr i32 %284, 5
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %283, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %25, align 4
  %290 = and i32 %289, 31
  %291 = shl i32 1, %290
  %292 = and i32 %288, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %354

294:                                              ; preds = %272
  %295 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  %296 = call i32 @VM_PAGE_GRAB_FICTITIOUS(%struct.TYPE_36__* %295)
  %297 = load %struct.TYPE_37__*, %struct.TYPE_37__** %22, align 8
  %298 = call i32 @vm_object_lock(%struct.TYPE_37__* %297)
  %299 = load %struct.TYPE_37__*, %struct.TYPE_37__** %22, align 8
  %300 = load i32, i32* %9, align 4
  %301 = call %struct.TYPE_36__* @vm_page_lookup(%struct.TYPE_37__* %299, i32 %300)
  store %struct.TYPE_36__* %301, %struct.TYPE_36__** %11, align 8
  %302 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %303 = load %struct.TYPE_36__*, %struct.TYPE_36__** @VM_PAGE_NULL, align 8
  %304 = icmp eq %struct.TYPE_36__* %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %294
  %306 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %307

307:                                              ; preds = %305, %294
  %308 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  %309 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @assert(i32 %310)
  %312 = load i8*, i8** @FALSE, align 8
  %313 = ptrtoint i8* %312 to i32
  %314 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  %315 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  %316 = load i8*, i8** @TRUE, align 8
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 6
  store i8* %316, i8** %318, align 8
  %319 = load i8*, i8** @TRUE, align 8
  %320 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  %321 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %320, i32 0, i32 5
  store i8* %319, i8** %321, align 8
  %322 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  %323 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %324 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_36__* %323)
  %325 = call i32 @VM_PAGE_SET_PHYS_PAGE(%struct.TYPE_36__* %322, i32 %324)
  %326 = load %struct.TYPE_37__*, %struct.TYPE_37__** %22, align 8
  %327 = call i32 @vm_object_unlock(%struct.TYPE_37__* %326)
  %328 = call i32 (...) @vm_page_lockspin_queues()
  %329 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  %330 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %331 = load i8*, i8** @TRUE, align 8
  %332 = call i32 @vm_page_wire(%struct.TYPE_36__* %329, i32 %330, i8* %331)
  %333 = call i32 (...) @vm_page_unlock_queues()
  %334 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  %335 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %335, i32 0, i32 5
  %337 = load %struct.TYPE_37__*, %struct.TYPE_37__** %336, align 8
  %338 = load i32, i32* %24, align 4
  %339 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %340 = call i32 @vm_page_insert_wired(%struct.TYPE_36__* %334, %struct.TYPE_37__* %337, i32 %338, i32 %339)
  %341 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  %342 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  %345 = xor i1 %344, true
  %346 = zext i1 %345 to i32
  %347 = call i32 @assert(i32 %346)
  %348 = load i8*, i8** @FALSE, align 8
  %349 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  %350 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %349, i32 0, i32 3
  store i8* %348, i8** %350, align 8
  %351 = load i8*, i8** @FALSE, align 8
  %352 = load %struct.TYPE_36__*, %struct.TYPE_36__** %23, align 8
  %353 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %352, i32 0, i32 2
  store i8* %351, i8** %353, align 8
  br label %354

354:                                              ; preds = %307, %272
  %355 = load i32, i32* @PAGE_SIZE, align 4
  %356 = load i32, i32* %8, align 4
  %357 = sub nsw i32 %356, %355
  store i32 %357, i32* %8, align 4
  %358 = load i32, i32* @PAGE_SIZE_64, align 4
  %359 = load i32, i32* %9, align 4
  %360 = add nsw i32 %359, %358
  store i32 %360, i32* %9, align 4
  %361 = load i32, i32* @PAGE_SIZE_64, align 4
  %362 = load i32, i32* %24, align 4
  %363 = add nsw i32 %362, %361
  store i32 %363, i32* %24, align 4
  br label %269

364:                                              ; preds = %269
  %365 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %365, i32 0, i32 5
  %367 = load %struct.TYPE_37__*, %struct.TYPE_37__** %366, align 8
  %368 = call i32 @vm_object_unlock(%struct.TYPE_37__* %367)
  br label %369

369:                                              ; preds = %364, %172, %163, %149
  %370 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @UPL_SHADOWED, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %369
  store i32 0, i32* %9, align 4
  br label %387

377:                                              ; preds = %369
  %378 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %381, i32 0, i32 5
  %383 = load %struct.TYPE_37__*, %struct.TYPE_37__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = sub nsw i32 %380, %385
  store i32 %386, i32* %9, align 4
  br label %387

387:                                              ; preds = %377, %376
  %388 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %8, align 4
  %391 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %391, i32 0, i32 5
  %393 = load %struct.TYPE_37__*, %struct.TYPE_37__** %392, align 8
  %394 = call i32 @vm_object_reference(%struct.TYPE_37__* %393)
  %395 = load i32, i32* %13, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %426, label %397

397:                                              ; preds = %387
  %398 = load i64*, i64** %7, align 8
  store i64 0, i64* %398, align 8
  %399 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %400 = load i64*, i64** %7, align 8
  %401 = load i32, i32* %8, align 4
  %402 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %403 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %404 = load i32, i32* @VM_KERN_MEMORY_OSFMK, align 4
  %405 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %405, i32 0, i32 5
  %407 = load %struct.TYPE_37__*, %struct.TYPE_37__** %406, align 8
  %408 = load i32, i32* %9, align 4
  %409 = load i8*, i8** @FALSE, align 8
  %410 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %411 = load i32, i32* @VM_PROT_ALL, align 4
  %412 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %413 = call i64 @vm_map_enter(%struct.TYPE_38__* %399, i64* %400, i32 %401, i64 0, i32 %402, i32 %403, i32 %404, %struct.TYPE_37__* %407, i32 %408, i8* %409, i32 %410, i32 %411, i32 %412)
  store i64 %413, i64* %12, align 8
  %414 = load i64, i64* %12, align 8
  %415 = load i64, i64* @KERN_SUCCESS, align 8
  %416 = icmp ne i64 %414, %415
  br i1 %416, label %417, label %425

417:                                              ; preds = %397
  %418 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %418, i32 0, i32 5
  %420 = load %struct.TYPE_37__*, %struct.TYPE_37__** %419, align 8
  %421 = call i32 @vm_object_deallocate(%struct.TYPE_37__* %420)
  %422 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %423 = call i32 @upl_unlock(%struct.TYPE_39__* %422)
  %424 = load i64, i64* %12, align 8
  store i64 %424, i64* %4, align 8
  br label %536

425:                                              ; preds = %397
  br label %447

426:                                              ; preds = %387
  %427 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %428 = load i64*, i64** %7, align 8
  %429 = load i32, i32* %8, align 4
  %430 = load i32, i32* @VM_FLAGS_FIXED, align 4
  %431 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %432 = load i32, i32* @VM_KERN_MEMORY_OSFMK, align 4
  %433 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %433, i32 0, i32 5
  %435 = load %struct.TYPE_37__*, %struct.TYPE_37__** %434, align 8
  %436 = load i32, i32* %9, align 4
  %437 = load i8*, i8** @FALSE, align 8
  %438 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %439 = load i32, i32* @VM_PROT_ALL, align 4
  %440 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %441 = call i64 @vm_map_enter(%struct.TYPE_38__* %427, i64* %428, i32 %429, i64 0, i32 %430, i32 %431, i32 %432, %struct.TYPE_37__* %435, i32 %436, i8* %437, i32 %438, i32 %439, i32 %440)
  store i64 %441, i64* %12, align 8
  %442 = load i64, i64* %12, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %446

444:                                              ; preds = %426
  %445 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %446

446:                                              ; preds = %444, %426
  br label %447

447:                                              ; preds = %446, %425
  %448 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %448, i32 0, i32 5
  %450 = load %struct.TYPE_37__*, %struct.TYPE_37__** %449, align 8
  %451 = call i32 @vm_object_lock(%struct.TYPE_37__* %450)
  %452 = load i64*, i64** %7, align 8
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %10, align 8
  br label %454

454:                                              ; preds = %495, %447
  %455 = load i32, i32* %8, align 4
  %456 = icmp sgt i32 %455, 0
  br i1 %456, label %457, label %503

457:                                              ; preds = %454
  %458 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %458, i32 0, i32 5
  %460 = load %struct.TYPE_37__*, %struct.TYPE_37__** %459, align 8
  %461 = load i32, i32* %9, align 4
  %462 = call %struct.TYPE_36__* @vm_page_lookup(%struct.TYPE_37__* %460, i32 %461)
  store %struct.TYPE_36__* %462, %struct.TYPE_36__** %11, align 8
  %463 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %464 = icmp ne %struct.TYPE_36__* %463, null
  br i1 %464, label %465, label %491

465:                                              ; preds = %457
  %466 = load i8*, i8** @TRUE, align 8
  %467 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %468 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %467, i32 0, i32 1
  store i8* %466, i8** %468, align 8
  %469 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = load i64, i64* @kernel_pmap, align 8
  %473 = icmp eq i64 %471, %472
  %474 = zext i1 %473 to i32
  %475 = call i32 @assert(i32 %474)
  %476 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = load i64, i64* %10, align 8
  %480 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %481 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %482 = load i32, i32* @VM_PROT_NONE, align 4
  %483 = load i8*, i8** @TRUE, align 8
  %484 = load i64, i64* %12, align 8
  %485 = call i32 @PMAP_ENTER(i64 %478, i64 %479, %struct.TYPE_36__* %480, i32 %481, i32 %482, i32 0, i8* %483, i64 %484)
  %486 = load i64, i64* %12, align 8
  %487 = load i64, i64* @KERN_SUCCESS, align 8
  %488 = icmp eq i64 %486, %487
  %489 = zext i1 %488 to i32
  %490 = call i32 @assert(i32 %489)
  br label %491

491:                                              ; preds = %465, %457
  %492 = load i32, i32* @PAGE_SIZE_64, align 4
  %493 = load i32, i32* %9, align 4
  %494 = add nsw i32 %493, %492
  store i32 %494, i32* %9, align 4
  br label %495

495:                                              ; preds = %491
  %496 = load i32, i32* @PAGE_SIZE, align 4
  %497 = load i32, i32* %8, align 4
  %498 = sub nsw i32 %497, %496
  store i32 %498, i32* %8, align 4
  %499 = load i32, i32* @PAGE_SIZE, align 4
  %500 = sext i32 %499 to i64
  %501 = load i64, i64* %10, align 8
  %502 = add nsw i64 %501, %500
  store i64 %502, i64* %10, align 8
  br label %454

503:                                              ; preds = %454
  %504 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %505 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %504, i32 0, i32 5
  %506 = load %struct.TYPE_37__*, %struct.TYPE_37__** %505, align 8
  %507 = call i32 @vm_object_unlock(%struct.TYPE_37__* %506)
  %508 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %509 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 8
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %509, align 8
  %512 = load i32, i32* @UPL_PAGE_LIST_MAPPED, align 4
  %513 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %514 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = or i32 %515, %512
  store i32 %516, i32* %514, align 8
  %517 = load i64*, i64** %7, align 8
  %518 = load i64, i64* %517, align 8
  %519 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %520 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %519, i32 0, i32 3
  store i64 %518, i64* %520, align 8
  %521 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %522 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %521, i32 0, i32 3
  %523 = load i64, i64* %522, align 8
  %524 = load i64*, i64** %7, align 8
  %525 = load i64, i64* %524, align 8
  %526 = icmp eq i64 %523, %525
  %527 = zext i1 %526 to i32
  %528 = call i32 @assert(i32 %527)
  %529 = load i32, i32* %13, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %503
  br label %108

532:                                              ; preds = %503
  %533 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %534 = call i32 @upl_unlock(%struct.TYPE_39__* %533)
  %535 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %535, i64* %4, align 8
  br label %536

536:                                              ; preds = %532, %417, %144, %115, %78, %30
  %537 = load i64, i64* %4, align 8
  ret i64 %537
}

declare dso_local i32 @vector_upl_is_valid(%struct.TYPE_39__*) #1

declare dso_local i32 @upl_lock(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_39__* @vector_upl_subupl_byindex(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @upl_unlock(%struct.TYPE_39__*) #1

declare dso_local i64 @kmem_suballoc(%struct.TYPE_38__*, i64*, i32, i8*, i32, i32, i32, %struct.TYPE_38__**) #1

declare dso_local i32 @vector_upl_set_submap(%struct.TYPE_39__*, %struct.TYPE_38__*, i64) #1

declare dso_local i32 @vector_upl_get_iostate(%struct.TYPE_39__*, %struct.TYPE_39__*, i64*, i32*) #1

declare dso_local %struct.TYPE_37__* @vm_object_allocate(i32) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_37__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VM_PAGE_GRAB_FICTITIOUS(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @vm_page_lookup(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @VM_PAGE_SET_PHYS_PAGE(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_36__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_37__*) #1

declare dso_local i32 @vm_page_lockspin_queues(...) #1

declare dso_local i32 @vm_page_wire(%struct.TYPE_36__*, i32, i8*) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @vm_page_insert_wired(%struct.TYPE_36__*, %struct.TYPE_37__*, i32, i32) #1

declare dso_local i32 @vm_object_reference(%struct.TYPE_37__*) #1

declare dso_local i64 @vm_map_enter(%struct.TYPE_38__*, i64*, i32, i64, i32, i32, i32, %struct.TYPE_37__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @vm_object_deallocate(%struct.TYPE_37__*) #1

declare dso_local i32 @PMAP_ENTER(i64, i64, %struct.TYPE_36__*, i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
