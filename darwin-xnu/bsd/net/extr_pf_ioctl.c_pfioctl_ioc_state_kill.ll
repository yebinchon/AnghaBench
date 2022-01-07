; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_state_kill.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pfioctl_ioc_state_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.pfioc_state_kill = type { i8*, i8*, i32, %struct.TYPE_14__, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.proc = type { i32 }
%struct.pf_state = type { i32, %struct.TYPE_18__, %struct.TYPE_16__*, %struct.pf_state_key* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.pf_state_key = type { i32, i32, %struct.pf_state_host, %struct.pf_state_host, i32 }
%struct.pf_state_host = type { i32, i32 }

@pf_state_tree_id = common dso_local global i32 0, align 4
@tree_id = common dso_local global i32 0, align 4
@PF_OUT = common dso_local global i32 0, align 4
@PFSTATE_NOSYNC = common dso_local global i32 0, align 4
@pf_status = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pfioc_state_kill*, %struct.proc*)* @pfioctl_ioc_state_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfioctl_ioc_state_kill(i32 %0, %struct.pfioc_state_kill* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfioc_state_kill*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pf_state*, align 8
  %11 = alloca %struct.pf_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pf_state*, align 8
  %15 = alloca %struct.pf_state*, align 8
  %16 = alloca %struct.pf_state_key*, align 8
  %17 = alloca %struct.pf_state_host*, align 8
  %18 = alloca %struct.pf_state_host*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pfioc_state_kill* %1, %struct.pfioc_state_kill** %5, align 8
  store %struct.proc* %2, %struct.proc** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %21 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 7
  store i8 0, i8* %23, align 1
  %24 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %25 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 7
  store i8 0, i8* %27, align 1
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %303 [
    i32 129, label %29
    i32 128, label %108
  ]

29:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  %30 = load i32, i32* @pf_state_tree_id, align 4
  %31 = call %struct.pf_state* @RB_MIN(i32 %30, i32* @tree_id)
  store %struct.pf_state* %31, %struct.pf_state** %10, align 8
  br label %32

32:                                               ; preds = %102, %29
  %33 = load %struct.pf_state*, %struct.pf_state** %10, align 8
  %34 = icmp ne %struct.pf_state* %33, null
  br i1 %34, label %35, label %104

35:                                               ; preds = %32
  %36 = load i32, i32* @pf_state_tree_id, align 4
  %37 = load %struct.pf_state*, %struct.pf_state** %10, align 8
  %38 = call %struct.pf_state* @RB_NEXT(i32 %36, i32* @tree_id, %struct.pf_state* %37)
  store %struct.pf_state* %38, %struct.pf_state** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %39 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %40 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %35
  %47 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %48 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.pf_state*, %struct.pf_state** %10, align 8
  %51 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %50, i32 0, i32 2
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcmp(i8* %49, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %46, %35
  %59 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %60 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %58
  %67 = load %struct.pf_state*, %struct.pf_state** %10, align 8
  %68 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = icmp eq %struct.TYPE_17__* null, %70
  br i1 %71, label %84, label %72

72:                                               ; preds = %66
  %73 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %74 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.pf_state*, %struct.pf_state** %10, align 8
  %77 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @strcmp(i8* %75, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72, %66
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %84, %72, %58
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi i1 [ false, %85 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.pf_state*, %struct.pf_state** %10, align 8
  %98 = call i32 @pf_unlink_state(%struct.pf_state* %97)
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.pf_state*, %struct.pf_state** %11, align 8
  store %struct.pf_state* %103, %struct.pf_state** %10, align 8
  br label %32

104:                                              ; preds = %32
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %107 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %305

108:                                              ; preds = %3
  store i32 0, i32* %19, align 4
  %109 = load i32, i32* @pf_state_tree_id, align 4
  %110 = call %struct.pf_state* @RB_MIN(i32 %109, i32* @tree_id)
  store %struct.pf_state* %110, %struct.pf_state** %14, align 8
  br label %111

111:                                              ; preds = %297, %108
  %112 = load %struct.pf_state*, %struct.pf_state** %14, align 8
  %113 = icmp ne %struct.pf_state* %112, null
  br i1 %113, label %114, label %299

114:                                              ; preds = %111
  %115 = load i32, i32* @pf_state_tree_id, align 4
  %116 = load %struct.pf_state*, %struct.pf_state** %14, align 8
  %117 = call %struct.pf_state* @RB_NEXT(i32 %115, i32* @tree_id, %struct.pf_state* %116)
  store %struct.pf_state* %117, %struct.pf_state** %15, align 8
  %118 = load %struct.pf_state*, %struct.pf_state** %14, align 8
  %119 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %118, i32 0, i32 3
  %120 = load %struct.pf_state_key*, %struct.pf_state_key** %119, align 8
  store %struct.pf_state_key* %120, %struct.pf_state_key** %16, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %121 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %122 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %114
  %129 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %130 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.pf_state*, %struct.pf_state** %14, align 8
  %133 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %132, i32 0, i32 2
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @strcmp(i8* %131, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %139, %128, %114
  %141 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %142 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %140
  %149 = load %struct.pf_state*, %struct.pf_state** %14, align 8
  %150 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = icmp eq %struct.TYPE_17__* null, %152
  br i1 %153, label %166, label %154

154:                                              ; preds = %148
  %155 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %156 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.pf_state*, %struct.pf_state** %14, align 8
  %159 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @strcmp(i8* %157, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %154, %148
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %166, %154, %140
  %168 = load %struct.pf_state_key*, %struct.pf_state_key** %16, align 8
  %169 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @PF_OUT, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %167
  %174 = load %struct.pf_state_key*, %struct.pf_state_key** %16, align 8
  %175 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %174, i32 0, i32 2
  store %struct.pf_state_host* %175, %struct.pf_state_host** %17, align 8
  %176 = load %struct.pf_state_key*, %struct.pf_state_key** %16, align 8
  %177 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %176, i32 0, i32 3
  store %struct.pf_state_host* %177, %struct.pf_state_host** %18, align 8
  br label %183

178:                                              ; preds = %167
  %179 = load %struct.pf_state_key*, %struct.pf_state_key** %16, align 8
  %180 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %179, i32 0, i32 3
  store %struct.pf_state_host* %180, %struct.pf_state_host** %17, align 8
  %181 = load %struct.pf_state_key*, %struct.pf_state_key** %16, align 8
  %182 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %181, i32 0, i32 2
  store %struct.pf_state_host* %182, %struct.pf_state_host** %18, align 8
  br label %183

183:                                              ; preds = %178, %173
  %184 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %185 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load %struct.pf_state_key*, %struct.pf_state_key** %16, align 8
  %190 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %193 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %191, %194
  br i1 %195, label %196, label %296

196:                                              ; preds = %188, %183
  %197 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %198 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %196
  %202 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %203 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.pf_state_key*, %struct.pf_state_key** %16, align 8
  %206 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %204, %207
  br i1 %208, label %209, label %296

209:                                              ; preds = %201, %196
  %210 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %211 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %215 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %221 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load %struct.pf_state_host*, %struct.pf_state_host** %17, align 8
  %227 = getelementptr inbounds %struct.pf_state_host, %struct.pf_state_host* %226, i32 0, i32 1
  %228 = load %struct.pf_state_key*, %struct.pf_state_key** %16, align 8
  %229 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @PF_MATCHA(i32 %213, i32* %219, i32* %225, i32* %227, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %296

233:                                              ; preds = %209
  %234 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %235 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %239 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 1
  %244 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %245 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 0
  %250 = load %struct.pf_state_host*, %struct.pf_state_host** %18, align 8
  %251 = getelementptr inbounds %struct.pf_state_host, %struct.pf_state_host* %250, i32 0, i32 1
  %252 = load %struct.pf_state_key*, %struct.pf_state_key** %16, align 8
  %253 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @PF_MATCHA(i32 %237, i32* %243, i32* %249, i32* %251, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %296

257:                                              ; preds = %233
  %258 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %259 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %262 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %265 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %264, i32 0, i32 6
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = load %struct.pf_state_host*, %struct.pf_state_host** %17, align 8
  %268 = getelementptr inbounds %struct.pf_state_host, %struct.pf_state_host* %267, i32 0, i32 0
  %269 = call i32 @pf_match_xport(i32 %260, i32 %263, i32* %266, i32* %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %296

271:                                              ; preds = %257
  %272 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %273 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %276 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %279 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 0
  %281 = load %struct.pf_state_host*, %struct.pf_state_host** %18, align 8
  %282 = getelementptr inbounds %struct.pf_state_host, %struct.pf_state_host* %281, i32 0, i32 0
  %283 = call i32 @pf_match_xport(i32 %274, i32 %277, i32* %280, i32* %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %296

285:                                              ; preds = %271
  %286 = load i32, i32* %8, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %296

288:                                              ; preds = %285
  %289 = load i32, i32* %9, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %288
  %292 = load %struct.pf_state*, %struct.pf_state** %14, align 8
  %293 = call i32 @pf_unlink_state(%struct.pf_state* %292)
  %294 = load i32, i32* %19, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %19, align 4
  br label %296

296:                                              ; preds = %291, %288, %285, %271, %257, %233, %209, %201, %188
  br label %297

297:                                              ; preds = %296
  %298 = load %struct.pf_state*, %struct.pf_state** %15, align 8
  store %struct.pf_state* %298, %struct.pf_state** %14, align 8
  br label %111

299:                                              ; preds = %111
  %300 = load i32, i32* %19, align 4
  %301 = load %struct.pfioc_state_kill*, %struct.pfioc_state_kill** %5, align 8
  %302 = getelementptr inbounds %struct.pfioc_state_kill, %struct.pfioc_state_kill* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 8
  br label %305

303:                                              ; preds = %3
  %304 = call i32 @VERIFY(i32 0)
  br label %305

305:                                              ; preds = %303, %299, %104
  %306 = load i32, i32* %7, align 4
  ret i32 %306
}

declare dso_local %struct.pf_state* @RB_MIN(i32, i32*) #1

declare dso_local %struct.pf_state* @RB_NEXT(i32, i32*, %struct.pf_state*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @pf_unlink_state(%struct.pf_state*) #1

declare dso_local i32 @PF_MATCHA(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @pf_match_xport(i32, i32, i32*, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
