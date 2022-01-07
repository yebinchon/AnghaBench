; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_excluded.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_excluded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ignore_fbt_blacklist = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dtrace_\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dtrace_safe_\00", align 1
@TRUE = common dso_local global i32 0, align 4
@critical_blacklist = common dso_local global i32 0, align 4
@CRITICAL_BLACKLIST_COUNT = common dso_local global i32 0, align 4
@_cmp = common dso_local global i32 0, align 4
@probe_ctx_closure = common dso_local global i32 0, align 4
@PROBE_CTX_CLOSURE_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"cpu_\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"platform_\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"machine_\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ml_\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"PE_\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"rtc_\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"_rtc_\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"rtclock_\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"clock_\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"bcopy\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"pmap_\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"hw_\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"lapic_\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"OSAdd\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"OSBit\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"OSDecrement\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"OSIncrement\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"OSCompareAndSwap\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"etimer_\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"dtxnu_kern_\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"flush_mmu_tlb_\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"fasttrap_\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"fuword\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"suword\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"_dtrace\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"hibernate_\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"idt64\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"ks_\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"hndl_\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"_intr_\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"mapping_\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"tsc_\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"pmCPU\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"pms\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"usimple_\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"lck_spin_lock\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"lck_spin_unlock\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"absolutetime_to_\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"commpage_\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"act_machine\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"acpi_\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"pal_\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"dsmos_\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"kdp_\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"kdb_\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"debug_\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"panic_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbt_excluded(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i64, i64* @ignore_fbt_blacklist, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %2, align 4
  br label %254

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @LIT_STRNSTART(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @LIT_STRNSTART(i8* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %2, align 4
  br label %254

18:                                               ; preds = %12, %8
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @critical_blacklist, align 4
  %21 = load i32, i32* @CRITICAL_BLACKLIST_COUNT, align 4
  %22 = load i32, i32* @_cmp, align 4
  %23 = call i32* @bsearch(i8* %19, i32 %20, i32 %21, i32 8, i32 %22)
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %2, align 4
  br label %254

27:                                               ; preds = %18
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* @probe_ctx_closure, align 4
  %30 = load i32, i32* @PROBE_CTX_CLOSURE_COUNT, align 4
  %31 = load i32, i32* @_cmp, align 4
  %32 = call i32* @bsearch(i8* %28, i32 %29, i32 %30, i32 8, i32 %31)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %2, align 4
  br label %254

36:                                               ; preds = %27
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @LIT_STRNSTART(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %120, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @LIT_STRNSTART(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %120, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = call i64 @LIT_STRNSTART(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %120, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @LIT_STRNSTART(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %120, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @LIT_STRNSTART(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %120, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @LIT_STRNSTART(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %120, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %3, align 8
  %62 = call i64 @LIT_STRNSTART(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %120, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %3, align 8
  %66 = call i64 @LIT_STRNSTART(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %120, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %3, align 8
  %70 = call i64 @LIT_STRNSTART(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %120, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %3, align 8
  %74 = call i64 @LIT_STRNSTART(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %120, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** %3, align 8
  %78 = call i64 @LIT_STRNSTART(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %120, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %3, align 8
  %82 = call i64 @LIT_STRNSTART(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %120, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %3, align 8
  %86 = call i64 @LIT_STRNSTART(i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %120, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %3, align 8
  %90 = call i64 @LIT_STRNSTART(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %120, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %3, align 8
  %94 = call i64 @LIT_STRNSTART(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %92
  %97 = load i8*, i8** %3, align 8
  %98 = call i64 @LIT_STRNSTART(i8* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %120, label %100

100:                                              ; preds = %96
  %101 = load i8*, i8** %3, align 8
  %102 = call i64 @LIT_STRNSTART(i8* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %3, align 8
  %106 = call i64 @LIT_STRNSTART(i8* %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %3, align 8
  %110 = call i64 @LIT_STRNSTART(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** %3, align 8
  %114 = call i64 @LIT_STRNSTART(i8* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i8*, i8** %3, align 8
  %118 = call i64 @LIT_STRNSTART(i8* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36
  %121 = load i32, i32* @TRUE, align 4
  store i32 %121, i32* %2, align 4
  br label %254

122:                                              ; preds = %116
  %123 = load i8*, i8** %3, align 8
  %124 = call i64 @LIT_STRNSTART(i8* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %122
  %127 = load i8*, i8** %3, align 8
  %128 = call i64 @LIT_STRNSTART(i8* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %3, align 8
  %132 = call i64 @LIT_STRNSTART(i8* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130, %126, %122
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %2, align 4
  br label %254

136:                                              ; preds = %130
  %137 = load i8*, i8** %3, align 8
  %138 = call i64 @LIT_STRNSTART(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* %2, align 4
  br label %254

142:                                              ; preds = %136
  %143 = load i8*, i8** %3, align 8
  %144 = call i64 @LIT_STRNSTART(i8* %143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @TRUE, align 4
  store i32 %147, i32* %2, align 4
  br label %254

148:                                              ; preds = %142
  %149 = load i8*, i8** %3, align 8
  %150 = call i64 @LIT_STRNSTART(i8* %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %224, label %152

152:                                              ; preds = %148
  %153 = load i8*, i8** %3, align 8
  %154 = call i64 @LIT_STRNSTART(i8* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %224, label %156

156:                                              ; preds = %152
  %157 = load i8*, i8** %3, align 8
  %158 = call i64 @LIT_STRNSTART(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %224, label %160

160:                                              ; preds = %156
  %161 = load i8*, i8** %3, align 8
  %162 = call i64 @LIT_STRNSTART(i8* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %224, label %164

164:                                              ; preds = %160
  %165 = load i8*, i8** %3, align 8
  %166 = call i64 @LIT_STRNSTART(i8* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %224, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** %3, align 8
  %170 = call i64 @LIT_STRNSTART(i8* %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %224, label %172

172:                                              ; preds = %168
  %173 = load i8*, i8** %3, align 8
  %174 = call i64 @LIT_STRNSTART(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %224, label %176

176:                                              ; preds = %172
  %177 = load i8*, i8** %3, align 8
  %178 = call i64 @LIT_STRNSTART(i8* %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0))
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %224, label %180

180:                                              ; preds = %176
  %181 = load i8*, i8** %3, align 8
  %182 = call i64 @LIT_STRNSTART(i8* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0))
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %224, label %184

184:                                              ; preds = %180
  %185 = load i8*, i8** %3, align 8
  %186 = call i64 @LIT_STRNSTART(i8* %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0))
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %224, label %188

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8
  %190 = call i64 @LIT_STRNSTART(i8* %189, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0))
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %224, label %192

192:                                              ; preds = %188
  %193 = load i8*, i8** %3, align 8
  %194 = call i64 @LIT_STRNSTART(i8* %193, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0))
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %224, label %196

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8
  %198 = call i64 @LIT_STRNSTART(i8* %197, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0))
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %224, label %200

200:                                              ; preds = %196
  %201 = load i8*, i8** %3, align 8
  %202 = call i64 @LIT_STRNSTART(i8* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %224, label %204

204:                                              ; preds = %200
  %205 = load i8*, i8** %3, align 8
  %206 = call i64 @LIT_STRNSTART(i8* %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %224, label %208

208:                                              ; preds = %204
  %209 = load i8*, i8** %3, align 8
  %210 = call i64 @LIT_STRNSTART(i8* %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %224, label %212

212:                                              ; preds = %208
  %213 = load i8*, i8** %3, align 8
  %214 = call i64 @LIT_STRNSTART(i8* %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0))
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %224, label %216

216:                                              ; preds = %212
  %217 = load i8*, i8** %3, align 8
  %218 = call i64 @LIT_STRNSTART(i8* %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0))
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %216
  %221 = load i8*, i8** %3, align 8
  %222 = call i64 @LIT_STRNSTART(i8* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %220, %216, %212, %208, %204, %200, %196, %192, %188, %184, %180, %176, %172, %168, %164, %160, %156, %152, %148
  %225 = load i32, i32* @TRUE, align 4
  store i32 %225, i32* %2, align 4
  br label %254

226:                                              ; preds = %220
  %227 = load i8*, i8** %3, align 8
  %228 = call i64 @LIT_STRNSTART(i8* %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0))
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = load i32, i32* @TRUE, align 4
  store i32 %231, i32* %2, align 4
  br label %254

232:                                              ; preds = %226
  %233 = load i8*, i8** %3, align 8
  %234 = call i64 @LIT_STRNSTART(i8* %233, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0))
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %232
  %237 = load i8*, i8** %3, align 8
  %238 = call i64 @LIT_STRNSTART(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0))
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = load i8*, i8** %3, align 8
  %242 = call i64 @LIT_STRNSTART(i8* %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0))
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %240, %236, %232
  %245 = load i32, i32* @TRUE, align 4
  store i32 %245, i32* %2, align 4
  br label %254

246:                                              ; preds = %240
  %247 = load i8*, i8** %3, align 8
  %248 = call i32* @strstr(i8* %247, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0))
  %249 = icmp ne i32* null, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = load i32, i32* @TRUE, align 4
  store i32 %251, i32* %2, align 4
  br label %254

252:                                              ; preds = %246
  %253 = load i32, i32* @FALSE, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %252, %250, %244, %230, %224, %146, %140, %134, %120, %34, %25, %16, %6
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i64 @LIT_STRNSTART(i8*, i8*) #1

declare dso_local i32* @bsearch(i8*, i32, i32, i32, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
