; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_state_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_state_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i64*, %struct.TYPE_6__, i8*, i8*, i64, i8*, i8*, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }

@NCPU = common dso_local global i64 0, align 8
@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@DTRACE_NCLIENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [120 x i8] c"dtrace_open: couldn't acquire minor number %d. This usually means that too many DTrace clients are in use at the moment\00", align 1
@ERESTART = common dso_local global i32 0, align 4
@DTRACE_EPIDNONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"dtrace_aggid_%d\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@VM_SLEEP = common dso_local global i32 0, align 4
@VMC_IDENTIFIER = common dso_local global i32 0, align 4
@dtrace_devi = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@CYCLIC_NONE = common dso_local global i8* null, align 8
@DTRACEOPT_MAX = common dso_local global i32 0, align 4
@DTRACEOPT_UNSET = common dso_local global i64 0, align 8
@DTRACEOPT_BUFPOLICY_SWITCH = common dso_local global i64 0, align 8
@DTRACEOPT_BUFPOLICY = common dso_local global i64 0, align 8
@DTRACEOPT_BUFRESIZE_AUTO = common dso_local global i64 0, align 8
@DTRACEOPT_BUFRESIZE = common dso_local global i64 0, align 8
@dtrace_nspec_default = common dso_local global i64 0, align 8
@DTRACEOPT_NSPEC = common dso_local global i64 0, align 8
@dtrace_specsize_default = common dso_local global i64 0, align 8
@DTRACEOPT_SPECSIZE = common dso_local global i64 0, align 8
@DTRACE_CPUALL = common dso_local global i64 0, align 8
@DTRACEOPT_CPU = common dso_local global i64 0, align 8
@dtrace_strsize_default = common dso_local global i64 0, align 8
@DTRACEOPT_STRSIZE = common dso_local global i64 0, align 8
@dtrace_stackframes_default = common dso_local global i64 0, align 8
@DTRACEOPT_STACKFRAMES = common dso_local global i64 0, align 8
@dtrace_ustackframes_default = common dso_local global i64 0, align 8
@DTRACEOPT_USTACKFRAMES = common dso_local global i64 0, align 8
@dtrace_cleanrate_default = common dso_local global i64 0, align 8
@DTRACEOPT_CLEANRATE = common dso_local global i64 0, align 8
@dtrace_aggrate_default = common dso_local global i64 0, align 8
@DTRACEOPT_AGGRATE = common dso_local global i64 0, align 8
@dtrace_switchrate_default = common dso_local global i64 0, align 8
@DTRACEOPT_SWITCHRATE = common dso_local global i64 0, align 8
@dtrace_statusrate_default = common dso_local global i64 0, align 8
@DTRACEOPT_STATUSRATE = common dso_local global i64 0, align 8
@dtrace_jstackframes_default = common dso_local global i64 0, align 8
@DTRACEOPT_JSTACKFRAMES = common dso_local global i64 0, align 8
@dtrace_jstackstrsize_default = common dso_local global i64 0, align 8
@DTRACEOPT_JSTACKSTRSIZE = common dso_local global i64 0, align 8
@dtrace_buflimit_default = common dso_local global i64 0, align 8
@DTRACEOPT_BUFLIMIT = common dso_local global i64 0, align 8
@PRIV_ALL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@DTRACE_CRV_ALL = common dso_local global i8* null, align 8
@DTRACE_CRA_ALL = common dso_local global i8* null, align 8
@PRIV_DTRACE_USER = common dso_local global i32 0, align 4
@PRIV_DTRACE_PROC = common dso_local global i32 0, align 4
@DTRACE_CRA_PROC = common dso_local global i32 0, align 4
@PRIV_PROC_OWNER = common dso_local global i32 0, align 4
@DTRACE_CRV_ALLPROC = common dso_local global i32 0, align 4
@DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER = common dso_local global i32 0, align 4
@PRIV_PROC_ZONE = common dso_local global i32 0, align 4
@DTRACE_CRV_ALLZONE = common dso_local global i32 0, align 4
@DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE = common dso_local global i32 0, align 4
@DTRACE_CRA_PROC_DESTRUCTIVE_CREDCHG = common dso_local global i32 0, align 4
@PRIV_DTRACE_KERNEL = common dso_local global i32 0, align 4
@DTRACE_CRV_KERNEL = common dso_local global i32 0, align 4
@DTRACE_CRA_KERNEL = common dso_local global i32 0, align 4
@DTRACE_CRA_PROC_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_8__**)* @dtrace_state_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_state_create(i32* %0, i32* %1, %struct.TYPE_8__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [30 x i8], align 16
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %7, align 8
  %15 = load i64, i64* @NCPU, align 8
  %16 = trunc i64 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %21 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %20)
  %22 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %23 = call i32 @LCK_MTX_ASSERT(i32* @cpu_lock, i32 %22)
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @getminor(i32 %29)
  store i32 %30, i32* %8, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @DTRACE_NCLIENTS, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.TYPE_8__* @dtrace_state_allocate(i32 %35)
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %11, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = icmp eq %struct.TYPE_8__* null, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @printf(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ERESTART, align 4
  store i32 %42, i32* %4, align 4
  br label %372

43:                                               ; preds = %34
  %44 = load i64, i64* @DTRACE_EPIDNONE, align 8
  %45 = add nsw i64 %44, 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 10
  store i64 %45, i64* %47, align 8
  %48 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @snprintf(i8* %48, i32 30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %52 = load i32, i32* @UINT32_MAX, align 4
  %53 = load i32, i32* @VM_SLEEP, align 4
  %54 = load i32, i32* @VMC_IDENTIFIER, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @vmem_create(i8* %51, i8* inttoptr (i64 1 to i8*), i32 %52, i32 1, i32* null, i32* null, i32* null, i32 0, i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %43
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @getemajor(i32 %63)
  store i32 %64, i32* %9, align 4
  br label %68

65:                                               ; preds = %43
  %66 = load i32, i32* @dtrace_devi, align 4
  %67 = call i32 @ddi_driver_major(i32 %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @makedev(i32 %69, i32 %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %68
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @KM_SLEEP, align 4
  %84 = call i8* @kmem_zalloc(i32 %82, i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 7
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @KM_SLEEP, align 4
  %89 = call i8* @kmem_zalloc(i32 %87, i32 %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 5
  store i64 0, i64* %93, align 8
  %94 = load i8*, i8** @CYCLIC_NONE, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @CYCLIC_NONE, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %103, align 8
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %116, %81
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @DTRACEOPT_MAX, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = load i64, i64* @DTRACEOPT_UNSET, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 %109, i64* %115, align 8
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %104

119:                                              ; preds = %104
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  store i64* %122, i64** %12, align 8
  %123 = load i64, i64* @DTRACEOPT_BUFPOLICY_SWITCH, align 8
  %124 = load i64*, i64** %12, align 8
  %125 = load i64, i64* @DTRACEOPT_BUFPOLICY, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  store i64 %123, i64* %126, align 8
  %127 = load i64, i64* @DTRACEOPT_BUFRESIZE_AUTO, align 8
  %128 = load i64*, i64** %12, align 8
  %129 = load i64, i64* @DTRACEOPT_BUFRESIZE, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  store i64 %127, i64* %130, align 8
  %131 = load i64, i64* @dtrace_nspec_default, align 8
  %132 = load i64*, i64** %12, align 8
  %133 = load i64, i64* @DTRACEOPT_NSPEC, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  store i64 %131, i64* %134, align 8
  %135 = load i64, i64* @dtrace_specsize_default, align 8
  %136 = load i64*, i64** %12, align 8
  %137 = load i64, i64* @DTRACEOPT_SPECSIZE, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  store i64 %135, i64* %138, align 8
  %139 = load i64, i64* @DTRACE_CPUALL, align 8
  %140 = load i64*, i64** %12, align 8
  %141 = load i64, i64* @DTRACEOPT_CPU, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  store i64 %139, i64* %142, align 8
  %143 = load i64, i64* @dtrace_strsize_default, align 8
  %144 = load i64*, i64** %12, align 8
  %145 = load i64, i64* @DTRACEOPT_STRSIZE, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  store i64 %143, i64* %146, align 8
  %147 = load i64, i64* @dtrace_stackframes_default, align 8
  %148 = load i64*, i64** %12, align 8
  %149 = load i64, i64* @DTRACEOPT_STACKFRAMES, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  store i64 %147, i64* %150, align 8
  %151 = load i64, i64* @dtrace_ustackframes_default, align 8
  %152 = load i64*, i64** %12, align 8
  %153 = load i64, i64* @DTRACEOPT_USTACKFRAMES, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  store i64 %151, i64* %154, align 8
  %155 = load i64, i64* @dtrace_cleanrate_default, align 8
  %156 = load i64*, i64** %12, align 8
  %157 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  store i64 %155, i64* %158, align 8
  %159 = load i64, i64* @dtrace_aggrate_default, align 8
  %160 = load i64*, i64** %12, align 8
  %161 = load i64, i64* @DTRACEOPT_AGGRATE, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  store i64 %159, i64* %162, align 8
  %163 = load i64, i64* @dtrace_switchrate_default, align 8
  %164 = load i64*, i64** %12, align 8
  %165 = load i64, i64* @DTRACEOPT_SWITCHRATE, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  store i64 %163, i64* %166, align 8
  %167 = load i64, i64* @dtrace_statusrate_default, align 8
  %168 = load i64*, i64** %12, align 8
  %169 = load i64, i64* @DTRACEOPT_STATUSRATE, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  store i64 %167, i64* %170, align 8
  %171 = load i64, i64* @dtrace_jstackframes_default, align 8
  %172 = load i64*, i64** %12, align 8
  %173 = load i64, i64* @DTRACEOPT_JSTACKFRAMES, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  store i64 %171, i64* %174, align 8
  %175 = load i64, i64* @dtrace_jstackstrsize_default, align 8
  %176 = load i64*, i64** %12, align 8
  %177 = load i64, i64* @DTRACEOPT_JSTACKSTRSIZE, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  store i64 %175, i64* %178, align 8
  %179 = load i64, i64* @dtrace_buflimit_default, align 8
  %180 = load i64*, i64** %12, align 8
  %181 = load i64, i64* @DTRACEOPT_BUFLIMIT, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  store i64 %179, i64* %182, align 8
  %183 = load i32*, i32** %6, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %191, label %185

185:                                              ; preds = %119
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* @PRIV_ALL, align 4
  %188 = load i32, i32* @B_FALSE, align 4
  %189 = call i64 @PRIV_POLICY_ONLY(i32* %186, i32 %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %185, %119
  %192 = load i8*, i8** @DTRACE_CRV_ALL, align 8
  %193 = ptrtoint i8* %192 to i32
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 8
  %197 = load i8*, i8** @DTRACE_CRA_ALL, align 8
  %198 = ptrtoint i8* %197 to i32
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 4
  br label %369

202:                                              ; preds = %185
  %203 = load i32*, i32** %6, align 8
  %204 = call i32 @crhold(i32* %203)
  %205 = load i32*, i32** %6, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 2
  store i32* %205, i32** %208, align 8
  %209 = load i32*, i32** %6, align 8
  %210 = load i32, i32* @PRIV_DTRACE_USER, align 4
  %211 = load i32, i32* @B_FALSE, align 4
  %212 = call i64 @PRIV_POLICY_ONLY(i32* %209, i32 %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %220, label %214

214:                                              ; preds = %202
  %215 = load i32*, i32** %6, align 8
  %216 = load i32, i32* @PRIV_DTRACE_PROC, align 4
  %217 = load i32, i32* @B_FALSE, align 4
  %218 = call i64 @PRIV_POLICY_ONLY(i32* %215, i32 %216, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %214, %202
  %221 = load i32, i32* @DTRACE_CRA_PROC, align 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %221
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %220, %214
  %228 = load i32*, i32** %6, align 8
  %229 = load i32, i32* @PRIV_DTRACE_USER, align 4
  %230 = load i32, i32* @B_FALSE, align 4
  %231 = call i64 @PRIV_POLICY_ONLY(i32* %228, i32 %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %278

233:                                              ; preds = %227
  %234 = load i32*, i32** %6, align 8
  %235 = load i32, i32* @PRIV_PROC_OWNER, align 4
  %236 = load i32, i32* @B_FALSE, align 4
  %237 = call i64 @PRIV_POLICY_ONLY(i32* %234, i32 %235, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %252

239:                                              ; preds = %233
  %240 = load i32, i32* @DTRACE_CRV_ALLPROC, align 4
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %240
  store i32 %245, i32* %243, align 8
  %246 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER, align 4
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %246
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %239, %233
  %253 = load i32*, i32** %6, align 8
  %254 = load i32, i32* @PRIV_PROC_ZONE, align 4
  %255 = load i32, i32* @B_FALSE, align 4
  %256 = call i64 @PRIV_POLICY_ONLY(i32* %253, i32 %254, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %271

258:                                              ; preds = %252
  %259 = load i32, i32* @DTRACE_CRV_ALLZONE, align 4
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %263, %259
  store i32 %264, i32* %262, align 8
  %265 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE, align 4
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %265
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %258, %252
  %272 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_CREDCHG, align 4
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %272
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %271, %227
  %279 = load i32*, i32** %6, align 8
  %280 = load i32, i32* @PRIV_DTRACE_KERNEL, align 4
  %281 = load i32, i32* @B_FALSE, align 4
  %282 = call i64 @PRIV_POLICY_ONLY(i32* %279, i32 %280, i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %335

284:                                              ; preds = %278
  %285 = load i32, i32* @DTRACE_CRV_KERNEL, align 4
  %286 = load i32, i32* @DTRACE_CRV_ALLPROC, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @DTRACE_CRV_ALLZONE, align 4
  %289 = or i32 %287, %288
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %289
  store i32 %294, i32* %292, align 8
  %295 = load i32, i32* @DTRACE_CRA_KERNEL, align 4
  %296 = load i32, i32* @DTRACE_CRA_PROC, align 4
  %297 = or i32 %295, %296
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, %297
  store i32 %302, i32* %300, align 4
  %303 = load i32*, i32** %6, align 8
  %304 = load i32, i32* @PRIV_PROC_OWNER, align 4
  %305 = load i32, i32* @B_FALSE, align 4
  %306 = call i64 @PRIV_POLICY_ONLY(i32* %303, i32 %304, i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %284
  %309 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER, align 4
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %309
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %308, %284
  %316 = load i32*, i32** %6, align 8
  %317 = load i32, i32* @PRIV_PROC_ZONE, align 4
  %318 = load i32, i32* @B_FALSE, align 4
  %319 = call i64 @PRIV_POLICY_ONLY(i32* %316, i32 %317, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %315
  %322 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE, align 4
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %322
  store i32 %327, i32* %325, align 4
  br label %328

328:                                              ; preds = %321, %315
  %329 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_CREDCHG, align 4
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %329
  store i32 %334, i32* %332, align 4
  br label %335

335:                                              ; preds = %328, %278
  %336 = load i32*, i32** %6, align 8
  %337 = load i32, i32* @PRIV_DTRACE_PROC, align 4
  %338 = load i32, i32* @B_FALSE, align 4
  %339 = call i64 @PRIV_POLICY_ONLY(i32* %336, i32 %337, i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %368

341:                                              ; preds = %335
  %342 = load i32*, i32** %6, align 8
  %343 = load i32, i32* @PRIV_PROC_OWNER, align 4
  %344 = load i32, i32* @B_FALSE, align 4
  %345 = call i64 @PRIV_POLICY_ONLY(i32* %342, i32 %343, i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %341
  %348 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_ALLUSER, align 4
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = or i32 %352, %348
  store i32 %353, i32* %351, align 4
  br label %354

354:                                              ; preds = %347, %341
  %355 = load i32*, i32** %6, align 8
  %356 = load i32, i32* @PRIV_PROC_ZONE, align 4
  %357 = load i32, i32* @B_FALSE, align 4
  %358 = call i64 @PRIV_POLICY_ONLY(i32* %355, i32 %356, i32 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %354
  %361 = load i32, i32* @DTRACE_CRA_PROC_DESTRUCTIVE_ALLZONE, align 4
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = or i32 %365, %361
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %360, %354
  br label %368

368:                                              ; preds = %367, %335
  br label %369

369:                                              ; preds = %368, %191
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %371 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %370, %struct.TYPE_8__** %371, align 8
  store i32 0, i32* %4, align 4
  br label %372

372:                                              ; preds = %369, %39
  %373 = load i32, i32* %4, align 4
  ret i32 %373
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @getminor(i32) #1

declare dso_local %struct.TYPE_8__* @dtrace_state_allocate(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @vmem_create(i8*, i8*, i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @getemajor(i32) #1

declare dso_local i32 @ddi_driver_major(i32) #1

declare dso_local i32 @makedev(i32, i32) #1

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i64 @PRIV_POLICY_ONLY(i32*, i32, i32) #1

declare dso_local i32 @crhold(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
