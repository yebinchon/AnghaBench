; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_vm_page_range_query.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_vm_page_range_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@VM_MAP_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@MAX_PAGE_RANGE_QUERY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@VM_PAGE_INFO_BASIC_COUNT = common dso_local global i32 0, align 4
@VM_PAGE_INFO_BASIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_vm_page_range_query(i64 %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %26 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %26, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @VM_MAP_NULL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32*, i32** %11, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %5
  %34 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %34, i64* %6, align 8
  br label %201

35:                                               ; preds = %30
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %17, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @mach_vm_trunc_page(i64 %41)
  store i64 %42, i64* %24, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @mach_vm_round_page(i32 %47)
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %25, align 8
  %50 = load i64, i64* %25, align 8
  %51 = load i64, i64* %24, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %35
  %54 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %54, i64* %6, align 8
  br label %201

55:                                               ; preds = %35
  %56 = load i32, i32* %17, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %25, align 8
  %60 = load i64, i64* %24, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %55
  %63 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %63, i64* %6, align 8
  br label %201

64:                                               ; preds = %58
  %65 = load i64, i64* %25, align 8
  %66 = load i64, i64* %24, align 8
  %67 = sub nsw i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @MAX_PAGE_RANGE_QUERY, align 4
  %70 = call i32 @MIN(i32 %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = ashr i32 %71, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %22, align 4
  %78 = load i32, i32* %22, align 4
  %79 = call i8* @kalloc(i32 %78)
  store i8* %79, i8** %20, align 8
  %80 = load i8*, i8** %20, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %64
  %83 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %83, i64* %6, align 8
  br label %201

84:                                               ; preds = %64
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %23, align 4
  %89 = load i32, i32* %23, align 4
  %90 = call i8* @kalloc(i32 %89)
  store i8* %90, i8** %21, align 8
  %91 = load i8*, i8** %21, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load i8*, i8** %20, align 8
  %95 = load i32, i32* %22, align 4
  %96 = call i32 @kfree(i8* %94, i32 %95)
  store i8* null, i8** %20, align 8
  %97 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %97, i64* %6, align 8
  br label %201

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %187, %98
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %188

102:                                              ; preds = %99
  %103 = load i32, i32* @VM_PAGE_INFO_BASIC_COUNT, align 4
  store i32 %103, i32* %19, align 4
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %24, align 8
  %106 = load i64, i64* %24, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @mach_vm_round_page(i32 %110)
  %112 = load i32, i32* @VM_PAGE_INFO_BASIC, align 4
  %113 = load i8*, i8** %20, align 8
  %114 = ptrtoint i8* %113 to i32
  %115 = call i64 @vm_map_page_range_info_internal(i64 %104, i64 %105, i32 %111, i32 %112, i32 %114, i32* %19)
  store i64 %115, i64* %12, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* @KERN_SUCCESS, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %138, %102
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %121
  %126 = load i8*, i8** %20, align 8
  %127 = bitcast i8* %126 to %struct.TYPE_2__*
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i8*, i8** %21, align 8
  %134 = bitcast i8* %133 to i32*
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %132, i32* %137, align 4
  br label %138

138:                                              ; preds = %125
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %14, align 4
  br label %121

141:                                              ; preds = %121
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  %146 = trunc i64 %145 to i32
  %147 = call i32 @MIN(i32 %142, i32 %146)
  store i32 %147, i32* %16, align 4
  %148 = load i8*, i8** %21, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %16, align 4
  %151 = call i64 @copyout(i8* %148, i32 %149, i32 %150)
  store i64 %151, i64* %12, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %24, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %24, align 8
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %17, align 4
  %158 = sub nsw i32 %157, %156
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %18, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %18, align 4
  %162 = load i64, i64* %12, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %141
  br label %188

165:                                              ; preds = %141
  %166 = load i32, i32* %17, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168, %165
  store i32 0, i32* %9, align 4
  br label %187

173:                                              ; preds = %168
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %9, align 4
  %179 = sub nsw i32 %178, %177
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @mach_vm_round_page(i32 %180)
  %182 = load i32, i32* @MAX_PAGE_RANGE_QUERY, align 4
  %183 = call i32 @MIN(i32 %181, i32 %182)
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* @PAGE_SHIFT, align 4
  %186 = ashr i32 %184, %185
  store i32 %186, i32* %13, align 4
  br label %187

187:                                              ; preds = %173, %172
  br label %99

188:                                              ; preds = %164, %99
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = udiv i64 %190, 4
  %192 = trunc i64 %191 to i32
  %193 = load i32*, i32** %11, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i8*, i8** %21, align 8
  %195 = load i32, i32* %23, align 4
  %196 = call i32 @kfree(i8* %194, i32 %195)
  store i8* null, i8** %21, align 8
  %197 = load i8*, i8** %20, align 8
  %198 = load i32, i32* %22, align 4
  %199 = call i32 @kfree(i8* %197, i32 %198)
  store i8* null, i8** %20, align 8
  %200 = load i64, i64* %12, align 8
  store i64 %200, i64* %6, align 8
  br label %201

201:                                              ; preds = %188, %93, %82, %62, %53, %33
  %202 = load i64, i64* %6, align 8
  ret i64 %202
}

declare dso_local i64 @mach_vm_trunc_page(i64) #1

declare dso_local i32 @mach_vm_round_page(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i8* @kalloc(i32) #1

declare dso_local i32 @kfree(i8*, i32) #1

declare dso_local i64 @vm_map_page_range_info_internal(i64, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @copyout(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
