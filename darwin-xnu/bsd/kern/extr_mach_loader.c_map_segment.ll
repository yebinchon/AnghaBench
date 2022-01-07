; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_map_segment.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_map_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@LOAD_BADMACHO = common dso_local global i64 0, align 8
@LOAD_SUCCESS = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [77 x i8] c"map_segment: unexpected mis-alignment vm[0x%llx:0x%llx] file[0x%llx:0x%llx]\0A\00", align 1
@CS_ENFORCEMENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@MEMORY_OBJECT_CONTROL_NULL = common dso_local global i64 0, align 8
@VM_FLAGS_FIXED = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4
@IPC_PORT_NULL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@LOAD_NOSPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_8__*)* @map_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_segment(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6, i32 %7, %struct.TYPE_8__* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_7__, align 8
  %26 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %11, align 4
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %19, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %9
  %31 = load i64, i64* %16, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %9
  %35 = load i64, i64* @LOAD_BADMACHO, align 8
  store i64 %35, i64* %10, align 8
  br label %209

36:                                               ; preds = %30
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* %15, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %36
  %45 = load i64, i64* @LOAD_SUCCESS, align 8
  store i64 %45, i64* %10, align 8
  br label %209

46:                                               ; preds = %40
  %47 = load i32, i32* @PAGE_MASK, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @vm_map_page_mask(i32 %48)
  %50 = call i64 @MAX(i32 %47, i32 %49)
  store i64 %50, i64* %24, align 8
  %51 = bitcast %struct.TYPE_7__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 bitcast (%struct.TYPE_7__* @VM_MAP_KERNEL_FLAGS_NONE to i8*), i64 24, i1 false)
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %24, align 8
  %54 = call i64 @vm_map_page_aligned(i64 %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %46
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %24, align 8
  %59 = call i64 @vm_map_page_aligned(i64 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %24, align 8
  %64 = call i64 @vm_map_page_aligned(i64 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %24, align 8
  %69 = call i64 @vm_map_page_aligned(i64 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %82

72:                                               ; preds = %66, %61, %56, %46
  %73 = load i64, i64* %12, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i64, i64* %13, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i64, i64* %15, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i64, i64* %16, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @panic(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %76, i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %72, %71
  store i64 0, i64* %20, align 8
  %83 = load i64, i64* %12, align 8
  store i64 %83, i64* %21, align 8
  %84 = load i64, i64* %12, align 8
  store i64 %84, i64* %22, align 8
  %85 = load i64, i64* %22, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %15, align 8
  %89 = sub nsw i64 %87, %88
  %90 = add nsw i64 %86, %89
  %91 = icmp sge i64 %85, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %198

93:                                               ; preds = %82
  %94 = load i64, i64* %22, align 8
  %95 = load i64, i64* %24, align 8
  %96 = call i64 @vm_map_round_page(i64 %94, i64 %95)
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* %15, align 8
  %100 = sub nsw i64 %98, %99
  %101 = add nsw i64 %97, %100
  %102 = load i64, i64* %24, align 8
  %103 = call i64 @vm_map_trunc_page(i64 %101, i64 %102)
  %104 = icmp sge i64 %96, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  br label %187

106:                                              ; preds = %93
  %107 = load i64, i64* %22, align 8
  store i64 %107, i64* %21, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %24, align 8
  %110 = and i64 %108, %109
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %24, align 8
  %113 = and i64 %111, %112
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = bitcast %struct.TYPE_7__* %26 to i8*
  %117 = bitcast %struct.TYPE_7__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 24, i1 false)
  br label %120

118:                                              ; preds = %106
  %119 = bitcast %struct.TYPE_7__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 bitcast (%struct.TYPE_7__* @VM_MAP_KERNEL_FLAGS_NONE to i8*), i64 24, i1 false)
  br label %120

120:                                              ; preds = %118, %115
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @CS_ENFORCEMENT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i8*, i8** @TRUE, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i8* %128, i8** %129, align 8
  br label %133

130:                                              ; preds = %120
  %131 = load i8*, i8** @FALSE, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i8* %131, i8** %132, align 8
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i8*, i8** @TRUE, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i8* %134, i8** %135, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* %15, align 8
  %139 = sub nsw i64 %137, %138
  %140 = add nsw i64 %136, %139
  %141 = load i64, i64* %24, align 8
  %142 = call i64 @vm_map_trunc_page(i64 %140, i64 %141)
  store i64 %142, i64* %22, align 8
  %143 = load i64, i64* %14, align 8
  %144 = load i64, i64* @MEMORY_OBJECT_CONTROL_NULL, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %133
  %147 = load i32, i32* %11, align 4
  %148 = load i64, i64* %22, align 8
  %149 = load i64, i64* %21, align 8
  %150 = sub nsw i64 %148, %149
  %151 = load i32, i32* @VM_FLAGS_FIXED, align 4
  %152 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* %20, align 8
  %156 = add nsw i64 %154, %155
  %157 = load i8*, i8** @TRUE, align 8
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %161 = call i64 @vm_map_enter_mem_object_control(i32 %147, i64* %21, i64 %150, i32 0, i32 %151, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %26, i32 %152, i64 %153, i64 %156, i8* %157, i32 %158, i32 %159, i32 %160)
  store i64 %161, i64* %23, align 8
  br label %175

162:                                              ; preds = %133
  %163 = load i32, i32* %11, align 4
  %164 = load i64, i64* %22, align 8
  %165 = load i64, i64* %21, align 8
  %166 = sub nsw i64 %164, %165
  %167 = load i32, i32* @VM_FLAGS_FIXED, align 4
  %168 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %169 = load i32, i32* @IPC_PORT_NULL, align 4
  %170 = load i8*, i8** @TRUE, align 8
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %18, align 4
  %173 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %174 = call i64 @vm_map_enter_mem_object(i32 %163, i64* %21, i64 %166, i32 0, i32 %167, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %26, i32 %168, i32 %169, i32 0, i8* %170, i32 %171, i32 %172, i32 %173)
  store i64 %174, i64* %23, align 8
  br label %175

175:                                              ; preds = %162, %146
  %176 = load i64, i64* %23, align 8
  %177 = load i64, i64* @KERN_SUCCESS, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i64, i64* @LOAD_NOSPACE, align 8
  store i64 %180, i64* %10, align 8
  br label %209

181:                                              ; preds = %175
  %182 = load i64, i64* %22, align 8
  %183 = load i64, i64* %21, align 8
  %184 = sub nsw i64 %182, %183
  %185 = load i64, i64* %20, align 8
  %186 = add nsw i64 %185, %184
  store i64 %186, i64* %20, align 8
  br label %187

187:                                              ; preds = %181, %105
  %188 = load i64, i64* %22, align 8
  %189 = load i64, i64* %12, align 8
  %190 = load i64, i64* %16, align 8
  %191 = load i64, i64* %15, align 8
  %192 = sub nsw i64 %190, %191
  %193 = add nsw i64 %189, %192
  %194 = icmp sge i64 %188, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %198

196:                                              ; preds = %187
  %197 = load i64, i64* %22, align 8
  store i64 %197, i64* %21, align 8
  br label %198

198:                                              ; preds = %196, %195, %92
  %199 = load i64, i64* %22, align 8
  %200 = load i64, i64* %12, align 8
  %201 = load i64, i64* %16, align 8
  %202 = load i64, i64* %15, align 8
  %203 = sub nsw i64 %201, %202
  %204 = add nsw i64 %200, %203
  %205 = icmp sge i64 %199, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load i64, i64* @LOAD_SUCCESS, align 8
  store i64 %208, i64* %10, align 8
  br label %209

209:                                              ; preds = %198, %179, %44, %34
  %210 = load i64, i64* %10, align 8
  ret i64 %210
}

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @vm_map_page_mask(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vm_map_page_aligned(i64, i64) #1

declare dso_local i32 @panic(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @vm_map_round_page(i64, i64) #1

declare dso_local i64 @vm_map_trunc_page(i64, i64) #1

declare dso_local i64 @vm_map_enter_mem_object_control(i32, i64*, i64, i32, i32, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i32, i64, i64, i8*, i32, i32, i32) #1

declare dso_local i64 @vm_map_enter_mem_object(i32, i64*, i64, i32, i32, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
