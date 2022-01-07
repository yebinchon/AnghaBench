; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_vm_init.c_arm_vm_page_granular_helper.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_vm_init.c_arm_vm_page_granular_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_TT_L1_PT_OFFMASK = common dso_local global i32 0, align 4
@cpu_tte = common dso_local global i32* null, align 8
@gVirtBase = common dso_local global i32 0, align 4
@gPhysBase = common dso_local global i32 0, align 4
@avail_end = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_TABLE = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_MASK = common dso_local global i32 0, align 4
@ARM_TTE_TABLE_MASK = common dso_local global i32 0, align 4
@avail_start = common dso_local global i32 0, align 4
@ARM_PGBYTES = common dso_local global i32 0, align 4
@ARM_PTE_AF = common dso_local global i32 0, align 4
@ARM_PTE_SH = common dso_local global i32 0, align 4
@ARM_PTE_TYPE = common dso_local global i32 0, align 4
@CACHE_ATTRINDX_DEFAULT = common dso_local global i32 0, align 4
@ARM_PTE_NX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @arm_vm_page_granular_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_vm_page_granular_helper(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ARM_TT_L1_PT_OFFMASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %172

22:                                               ; preds = %5
  %23 = load i32, i32* @ARM_TT_L1_PT_OFFMASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** @cpu_tte, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @ttenum(i32 %28)
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @gVirtBase, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* @gPhysBase, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @avail_end, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %172

42:                                               ; preds = %22
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = call i64 @phystokv(i32 %56)
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %14, align 8
  br label %91

59:                                               ; preds = %42
  %60 = load i32, i32* @avail_start, align 4
  %61 = call i64 @phystokv(i32 %60)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %14, align 8
  %63 = load i32, i32* @ARM_PGBYTES, align 4
  %64 = load i32, i32* @avail_start, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* @avail_start, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* @ARM_PGBYTES, align 4
  %68 = call i32 @bzero(i32* %66, i32 %67)
  store i32 0, i32* %16, align 4
  br label %69

69:                                               ; preds = %87, %59
  %70 = load i32, i32* %16, align 4
  %71 = icmp ult i32 %70, 4
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load i32*, i32** %14, align 8
  %74 = ptrtoint i32* %73 to i32
  %75 = call i64 @kvtophys(i32 %74)
  %76 = load i32, i32* %16, align 4
  %77 = mul i32 %76, 1024
  %78 = zext i32 %77 to i64
  %79 = add nsw i64 %75, %78
  %80 = call i32 @pa_to_tte(i64 %79)
  %81 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %82 = or i32 %80, %81
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %16, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %16, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %69

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* @avail_end, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* @avail_end, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %100, %91
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @gVirtBase, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32, i32* @gPhysBase, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* @gPhysBase, align 4
  %115 = icmp sge i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  store i32 0, i32* %16, align 4
  br label %118

118:                                              ; preds = %168, %108
  %119 = load i32, i32* %16, align 4
  %120 = zext i32 %119 to i64
  %121 = load i32, i32* @ARM_PGBYTES, align 4
  %122 = sext i32 %121 to i64
  %123 = udiv i64 %122, 4
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %171

125:                                              ; preds = %118
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %161

129:                                              ; preds = %125
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %161

133:                                              ; preds = %129
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @ARM_PTE_AF, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @ARM_PTE_SH, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @ARM_PTE_TYPE, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @CACHE_ATTRINDX_DEFAULT, align 4
  %143 = call i32 @ARM_PTE_ATTRINDX(i32 %142)
  %144 = or i32 %141, %143
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @ARM_PTE_AP(i32 %146)
  %148 = or i32 %145, %147
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %133
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* @ARM_PTE_NX, align 4
  %154 = or i32 %152, %153
  store i32 %154, i32* %15, align 4
  br label %155

155:                                              ; preds = %151, %133
  %156 = load i32, i32* %15, align 4
  %157 = load i32*, i32** %14, align 8
  %158 = load i32, i32* %16, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %155, %129, %125
  %162 = load i32, i32* @ARM_PGBYTES, align 4
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* @ARM_PGBYTES, align 4
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %161
  %169 = load i32, i32* %16, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %16, align 4
  br label %118

171:                                              ; preds = %118
  br label %172

172:                                              ; preds = %41, %171, %5
  ret void
}

declare dso_local i64 @ttenum(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @phystokv(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @pa_to_tte(i64) #1

declare dso_local i64 @kvtophys(i32) #1

declare dso_local i32 @ARM_PTE_ATTRINDX(i32) #1

declare dso_local i32 @ARM_PTE_AP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
