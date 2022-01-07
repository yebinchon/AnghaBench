; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_x86_validate_topology.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_x86_validate_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_7__* }

@topo_dbg = common dso_local global i64 0, align 8
@topoParms = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@real_ncpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"x86_validate_topology() %d threads but %d registered from MADT\00", align 1
@x86_pkgs = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Die(%d)->package is NULL\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Die %d points to package %d, should be %d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Die(%d)->package %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Die(%d)->cores: \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Core(%d)->die is NULL\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Core %d points to die %d, should be %d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Should have %d Cores, but only found %d for Die %d\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Die(%d)->lcpus: \00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"CPU(%d)->die is NULL\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"CPU %d points to die %d, should be %d\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Should have %d Threads, but only found %d for Die %d\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"Should have %d Dies, but only found %d for package %d\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Core(%d)->package is NULL\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"Core %d points to package %d, should be %d\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Core(%d)->package %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Core(%d)->lcpus: \00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"CPU(%d)->core is NULL\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"CPU %d points to core %d, should be %d\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"Should have %d Threads, but only found %d for Core %d\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"Should have %d Cores, but only found %d for package %d\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"CPU(%d)->package is NULL\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"CPU %d points to package %d, should be %d\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"CPU(%d)->package %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"Should have %d Threads, but only found %d for package %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x86_validate_topology() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i64, i64* @topo_dbg, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @debug_topology_print()
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 0), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 1), align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @real_ncpus, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @real_ncpus, align 4
  %22 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %12
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @x86_pkgs, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %1, align 8
  br label %25

25:                                               ; preds = %394, %23
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %398

28:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %2, align 8
  br label %32

32:                                               ; preds = %195, %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %201

35:                                               ; preds = %32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = icmp eq %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %50 = icmp ne %struct.TYPE_7__* %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %51, %45
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  store i32 0, i32* %6, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %3, align 8
  br label %79

79:                                               ; preds = %111, %64
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = icmp ne %struct.TYPE_10__* %80, null
  br i1 %81, label %82, label %121

82:                                               ; preds = %79
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = icmp eq %struct.TYPE_9__* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %97 = icmp ne %struct.TYPE_9__* %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %92
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %101, i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %98, %92
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %3, align 8
  br label %79

121:                                              ; preds = %79
  %122 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 2), align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 2), align 4
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i32 %127, i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %126, %121
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %136)
  store i32 0, i32* %7, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  store %struct.TYPE_8__* %140, %struct.TYPE_8__** %4, align 8
  br label %141

141:                                              ; preds = %173, %133
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = icmp ne %struct.TYPE_8__* %142, null
  br i1 %143, label %144, label %183

144:                                              ; preds = %141
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 6
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = icmp eq %struct.TYPE_9__* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %149, %144
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %159 = icmp ne %struct.TYPE_9__* %157, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %154
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %163, i32 %168, i32 %171)
  br label %173

173:                                              ; preds = %160, %154
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  store %struct.TYPE_8__* %182, %struct.TYPE_8__** %4, align 8
  br label %141

183:                                              ; preds = %141
  %184 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 3), align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 3), align 4
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i32 %189, i32 %190, i32 %193)
  br label %195

195:                                              ; preds = %188, %183
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %5, align 4
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  store %struct.TYPE_9__* %200, %struct.TYPE_9__** %2, align 8
  br label %32

201:                                              ; preds = %32
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 4), align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 4), align 4
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i32 %206, i32 %207, i32 %210)
  br label %212

212:                                              ; preds = %205, %201
  store i32 0, i32* %6, align 4
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  store %struct.TYPE_10__* %215, %struct.TYPE_10__** %3, align 8
  br label %216

216:                                              ; preds = %317, %212
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %218 = icmp ne %struct.TYPE_10__* %217, null
  br i1 %218, label %219, label %323

219:                                              ; preds = %216
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = icmp eq %struct.TYPE_7__* %222, null
  br i1 %223, label %224, label %229

224:                                              ; preds = %219
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %224, %219
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %234 = icmp ne %struct.TYPE_7__* %232, %233
  br i1 %234, label %235, label %248

235:                                              ; preds = %229
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 %238, i32 %243, i32 %246)
  br label %248

248:                                              ; preds = %235, %229
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %251, i32 %254)
  store i32 0, i32* %7, align 4
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  store %struct.TYPE_8__* %258, %struct.TYPE_8__** %4, align 8
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %261)
  br label %263

263:                                              ; preds = %295, %248
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %265 = icmp ne %struct.TYPE_8__* %264, null
  br i1 %265, label %266, label %305

266:                                              ; preds = %263
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = icmp eq %struct.TYPE_10__* %269, null
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %274)
  br label %276

276:                                              ; preds = %271, %266
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 4
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %278, align 8
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %281 = icmp ne %struct.TYPE_10__* %279, %280
  br i1 %281, label %282, label %295

282:                                              ; preds = %276
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 4
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i32 %285, i32 %290, i32 %293)
  br label %295

295:                                              ; preds = %282, %276
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %298)
  %300 = load i32, i32* %7, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %7, align 4
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 3
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %303, align 8
  store %struct.TYPE_8__* %304, %struct.TYPE_8__** %4, align 8
  br label %263

305:                                              ; preds = %263
  %306 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %307 = load i32, i32* %7, align 4
  %308 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 5), align 4
  %309 = icmp ne i32 %307, %308
  br i1 %309, label %310, label %317

310:                                              ; preds = %305
  %311 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 5), align 4
  %312 = load i32, i32* %7, align 4
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0), i32 %311, i32 %312, i32 %315)
  br label %317

317:                                              ; preds = %310, %305
  %318 = load i32, i32* %6, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %6, align 4
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  store %struct.TYPE_10__* %322, %struct.TYPE_10__** %3, align 8
  br label %216

323:                                              ; preds = %216
  %324 = load i32, i32* %6, align 4
  %325 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 6), align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %334

327:                                              ; preds = %323
  %328 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 6), align 4
  %329 = load i32, i32* %6, align 4
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i64 0, i64 0), i32 %328, i32 %329, i32 %332)
  br label %334

334:                                              ; preds = %327, %323
  store i32 0, i32* %7, align 4
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 2
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %336, align 8
  store %struct.TYPE_8__* %337, %struct.TYPE_8__** %4, align 8
  br label %338

338:                                              ; preds = %370, %334
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %340 = icmp ne %struct.TYPE_8__* %339, null
  br i1 %340, label %341, label %383

341:                                              ; preds = %338
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 2
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %343, align 8
  %345 = icmp eq %struct.TYPE_7__* %344, null
  br i1 %345, label %346, label %351

346:                                              ; preds = %341
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 %349)
  br label %351

351:                                              ; preds = %346, %341
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 2
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %353, align 8
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %356 = icmp ne %struct.TYPE_7__* %354, %355
  br i1 %356, label %357, label %370

357:                                              ; preds = %351
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 2
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i32 %360, i32 %365, i32 %368)
  br label %370

370:                                              ; preds = %357, %351
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = call i32 (i8*, ...) @TOPO_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 %373, i32 %376)
  %378 = load i32, i32* %7, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %7, align 4
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 1
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %381, align 8
  store %struct.TYPE_8__* %382, %struct.TYPE_8__** %4, align 8
  br label %338

383:                                              ; preds = %338
  %384 = load i32, i32* %7, align 4
  %385 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 1), align 4
  %386 = icmp ne i32 %384, %385
  br i1 %386, label %387, label %394

387:                                              ; preds = %383
  %388 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 1), align 4
  %389 = load i32, i32* %7, align 4
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0), i32 %388, i32 %389, i32 %392)
  br label %394

394:                                              ; preds = %387, %383
  %395 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 1
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %396, align 8
  store %struct.TYPE_7__* %397, %struct.TYPE_7__** %1, align 8
  br label %25

398:                                              ; preds = %25
  ret void
}

declare dso_local i32 @debug_topology_print(...) #1

declare dso_local i32 @panic(i8*, i32, ...) #1

declare dso_local i32 @TOPO_DBG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
