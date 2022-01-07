; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_update_roles.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_update_roles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i32 }
%struct.bstp_port = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BSTP_PORT_NEWINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s -> ALTERNATE_AGREED\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s -> ALTERNATE_PROPOSED\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s -> ALTERNATE_PORT\0A\00", align 1
@BSTP_IFSTATE_FORWARDING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"%s -> ROOT_REROOT\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s -> ROOT_AGREED\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s -> ROOT_PROPOSED\0A\00", align 1
@BSTP_PROTO_RSTP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"%s -> ROOT_REROOTED\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s -> DESIGNATED_RETIRED\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s -> DESIGNATED_SYNCED\0A\00", align 1
@BSTP_DEFAULT_MIGRATE_DELAY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"%s -> DESIGNATED_PROPOSE\0A\00", align 1
@BSTP_PORT_DISPUTED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"%s -> DESIGNATED_DISCARD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_state*, %struct.bstp_port*)* @bstp_update_roles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_update_roles(%struct.bstp_state* %0, %struct.bstp_port* %1) #0 {
  %3 = alloca %struct.bstp_state*, align 8
  %4 = alloca %struct.bstp_port*, align 8
  store %struct.bstp_state* %0, %struct.bstp_state** %3, align 8
  store %struct.bstp_port* %1, %struct.bstp_port** %4, align 8
  %5 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %6 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %526 [
    i32 129, label %8
    i32 132, label %31
    i32 131, label %31
    i32 128, label %117
    i32 130, label %258
  ]

8:                                                ; preds = %2
  %9 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %10 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %9, i32 0, i32 14
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %15 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %20 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18, %13, %8
  %24 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %25 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %24, i32 0, i32 14
  store i32 0, i32* %25, align 4
  %26 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %27 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %29 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %28, i32 0, i32 13
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %23, %18
  br label %526

31:                                               ; preds = %2, %2
  %32 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %33 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %38 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36, %31
  %42 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %43 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %42, i32 0, i32 20
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %48 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46, %36
  %52 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %53 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %52, i32 0, i32 20
  store i32 0, i32* %53, align 4
  %54 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %55 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* @BSTP_PORT_NEWINFO, align 4
  %57 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %58 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %62 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %61, i32 0, i32 6
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %51, %46, %41
  %68 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %69 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %68, i32 0, i32 20
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %74 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %72
  %78 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %79 = call i32 @bstp_set_all_sync(%struct.bstp_state* %78)
  %80 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %81 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %80, i32 0, i32 20
  store i32 0, i32* %81, align 4
  %82 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %83 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %82, i32 0, i32 6
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %77, %72, %67
  %89 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %90 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %89, i32 0, i32 14
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %95 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %100 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %99, i32 0, i32 13
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %98, %93, %88
  %104 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %105 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %104, i32 0, i32 14
  store i32 0, i32* %105, align 4
  %106 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %107 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %109 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %108, i32 0, i32 13
  store i32 0, i32* %109, align 8
  %110 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %111 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %110, i32 0, i32 6
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %103, %98
  br label %526

117:                                              ; preds = %2
  %118 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %119 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @BSTP_IFSTATE_FORWARDING, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %125 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %124, i32 0, i32 13
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %123
  %129 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %130 = call i32 @bstp_set_all_reroot(%struct.bstp_state* %129)
  %131 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %132 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %131, i32 0, i32 6
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %128, %123, %117
  %138 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %139 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %144 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %142, %137
  %148 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %149 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %148, i32 0, i32 20
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %147
  %153 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %154 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %175

157:                                              ; preds = %152, %142
  %158 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %159 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %158, i32 0, i32 20
  store i32 0, i32* %159, align 4
  %160 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %161 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %160, i32 0, i32 14
  store i32 0, i32* %161, align 4
  %162 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %163 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %162, i32 0, i32 2
  store i32 1, i32* %163, align 8
  %164 = load i32, i32* @BSTP_PORT_NEWINFO, align 4
  %165 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %166 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %170 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %169, i32 0, i32 6
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %157, %152, %147
  %176 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %177 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %176, i32 0, i32 20
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %175
  %181 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %182 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %196, label %185

185:                                              ; preds = %180
  %186 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %187 = call i32 @bstp_set_all_sync(%struct.bstp_state* %186)
  %188 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %189 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %188, i32 0, i32 20
  store i32 0, i32* %189, align 4
  %190 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %191 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %190, i32 0, i32 6
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %185, %180, %175
  %197 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %198 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @BSTP_IFSTATE_FORWARDING, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %237

202:                                              ; preds = %196
  %203 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %204 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %203, i32 0, i32 10
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %225, label %208

208:                                              ; preds = %202
  %209 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %210 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %211 = call i32 @bstp_rerooted(%struct.bstp_state* %209, %struct.bstp_port* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %237

213:                                              ; preds = %208
  %214 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %215 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %214, i32 0, i32 19
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %213
  %220 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %221 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @BSTP_PROTO_RSTP, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %219, %202
  %226 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %227 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  switch i32 %228, label %236 [
    i32 134, label %229
    i32 133, label %232
  ]

229:                                              ; preds = %225
  %230 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %231 = call i32 @bstp_set_port_state(%struct.bstp_port* %230, i32 133)
  br label %236

232:                                              ; preds = %225
  %233 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %234 = load i32, i32* @BSTP_IFSTATE_FORWARDING, align 4
  %235 = call i32 @bstp_set_port_state(%struct.bstp_port* %233, i32 %234)
  br label %236

236:                                              ; preds = %225, %232, %229
  br label %237

237:                                              ; preds = %236, %219, %213, %208, %196
  %238 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %239 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @BSTP_IFSTATE_FORWARDING, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %257

243:                                              ; preds = %237
  %244 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %245 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %244, i32 0, i32 13
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %243
  %249 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %250 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %249, i32 0, i32 13
  store i32 0, i32* %250, align 8
  %251 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %252 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %251, i32 0, i32 6
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %248, %243, %237
  br label %526

258:                                              ; preds = %2
  %259 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %260 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %259, i32 0, i32 12
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %258
  %265 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %266 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %265, i32 0, i32 13
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %264
  %270 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %271 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %270, i32 0, i32 13
  store i32 0, i32* %271, align 8
  %272 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %273 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %272, i32 0, i32 6
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %276)
  br label %278

278:                                              ; preds = %269, %264, %258
  %279 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %280 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = icmp eq i32 %281, 134
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %285 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %318

288:                                              ; preds = %283, %278
  %289 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %290 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %289, i32 0, i32 15
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %288
  %294 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %295 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %318

298:                                              ; preds = %293, %288
  %299 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %300 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %299, i32 0, i32 11
  %301 = load i32, i32* %300, align 8
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %298
  %304 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %305 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %318

308:                                              ; preds = %303, %298
  %309 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %310 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %309, i32 0, i32 14
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %332

313:                                              ; preds = %308
  %314 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %315 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %332

318:                                              ; preds = %313, %303, %293, %283
  %319 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %320 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %319, i32 0, i32 12
  %321 = call i32 @bstp_timer_stop(%struct.TYPE_7__* %320)
  %322 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %323 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %322, i32 0, i32 1
  store i32 1, i32* %323, align 4
  %324 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %325 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %324, i32 0, i32 14
  store i32 0, i32* %325, align 4
  %326 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %327 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %326, i32 0, i32 6
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %330)
  br label %332

332:                                              ; preds = %318, %313, %308
  %333 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %334 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @BSTP_IFSTATE_FORWARDING, align 4
  %337 = icmp ne i32 %335, %336
  br i1 %337, label %338, label %382

338:                                              ; preds = %332
  %339 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %340 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %339, i32 0, i32 15
  %341 = load i32, i32* %340, align 8
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %382, label %343

343:                                              ; preds = %338
  %344 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %345 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %382, label %348

348:                                              ; preds = %343
  %349 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %350 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %349, i32 0, i32 11
  %351 = load i32, i32* %350, align 8
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %382, label %353

353:                                              ; preds = %348
  %354 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %355 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %354, i32 0, i32 5
  store i32 1, i32* %355, align 4
  %356 = load i32, i32* @BSTP_PORT_NEWINFO, align 4
  %357 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %358 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = or i32 %359, %356
  store i32 %360, i32* %358, align 4
  %361 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %362 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %361, i32 0, i32 18
  %363 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %364 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %363, i32 0, i32 17
  %365 = load i32, i32* %364, align 8
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %353
  %368 = load i32, i32* @BSTP_DEFAULT_MIGRATE_DELAY, align 4
  br label %373

369:                                              ; preds = %353
  %370 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %371 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %370, i32 0, i32 16
  %372 = load i32, i32* %371, align 4
  br label %373

373:                                              ; preds = %369, %367
  %374 = phi i32 [ %368, %367 ], [ %372, %369 ]
  %375 = call i32 @bstp_timer_start(%struct.TYPE_8__* %362, i32 %374)
  %376 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %377 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %376, i32 0, i32 6
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %380)
  br label %382

382:                                              ; preds = %373, %348, %343, %338, %332
  %383 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %384 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @BSTP_IFSTATE_FORWARDING, align 4
  %387 = icmp ne i32 %385, %386
  br i1 %387, label %388, label %454

388:                                              ; preds = %382
  %389 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %390 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %389, i32 0, i32 10
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %404, label %394

394:                                              ; preds = %388
  %395 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %396 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %395, i32 0, i32 15
  %397 = load i32, i32* %396, align 8
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %404, label %399

399:                                              ; preds = %394
  %400 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %401 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %400, i32 0, i32 11
  %402 = load i32, i32* %401, align 8
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %454

404:                                              ; preds = %399, %394, %388
  %405 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %406 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %405, i32 0, i32 12
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %415, label %410

410:                                              ; preds = %404
  %411 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %412 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %411, i32 0, i32 13
  %413 = load i32, i32* %412, align 8
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %454, label %415

415:                                              ; preds = %410, %404
  %416 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %417 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %416, i32 0, i32 14
  %418 = load i32, i32* %417, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %454, label %420

420:                                              ; preds = %415
  %421 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %422 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %421, i32 0, i32 15
  %423 = load i32, i32* %422, align 8
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %435, label %425

425:                                              ; preds = %420
  %426 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %427 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %426, i32 0, i32 11
  %428 = load i32, i32* %427, align 8
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %435, label %430

430:                                              ; preds = %425
  %431 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %432 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %431, i32 0, i32 4
  %433 = load i32, i32* %432, align 8
  %434 = icmp eq i32 %433, 133
  br i1 %434, label %435, label %444

435:                                              ; preds = %430, %425, %420
  %436 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %437 = load i32, i32* @BSTP_IFSTATE_FORWARDING, align 4
  %438 = call i32 @bstp_set_port_state(%struct.bstp_port* %436, i32 %437)
  %439 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %440 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %439, i32 0, i32 9
  %441 = load i32, i32* %440, align 8
  %442 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %443 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %442, i32 0, i32 15
  store i32 %441, i32* %443, align 8
  br label %453

444:                                              ; preds = %430
  %445 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %446 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 8
  %448 = icmp eq i32 %447, 134
  br i1 %448, label %449, label %452

449:                                              ; preds = %444
  %450 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %451 = call i32 @bstp_set_port_state(%struct.bstp_port* %450, i32 133)
  br label %452

452:                                              ; preds = %449, %444
  br label %453

453:                                              ; preds = %452, %435
  br label %454

454:                                              ; preds = %453, %415, %410, %399, %382
  %455 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %456 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %455, i32 0, i32 14
  %457 = load i32, i32* %456, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %464

459:                                              ; preds = %454
  %460 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %461 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %482

464:                                              ; preds = %459, %454
  %465 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %466 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %465, i32 0, i32 13
  %467 = load i32, i32* %466, align 8
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %464
  %470 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %471 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %470, i32 0, i32 12
  %472 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %482, label %475

475:                                              ; preds = %469, %464
  %476 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %477 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 4
  %479 = load i32, i32* @BSTP_PORT_DISPUTED, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %525

482:                                              ; preds = %475, %469, %459
  %483 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %484 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %483, i32 0, i32 11
  %485 = load i32, i32* %484, align 8
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %525, label %487

487:                                              ; preds = %482
  %488 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %489 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %488, i32 0, i32 4
  %490 = load i32, i32* %489, align 8
  %491 = icmp ne i32 %490, 134
  br i1 %491, label %492, label %525

492:                                              ; preds = %487
  %493 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %494 = call i32 @bstp_set_port_state(%struct.bstp_port* %493, i32 134)
  %495 = load i32, i32* @BSTP_PORT_DISPUTED, align 4
  %496 = xor i32 %495, -1
  %497 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %498 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 4
  %500 = and i32 %499, %496
  store i32 %500, i32* %498, align 4
  %501 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %502 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %501, i32 0, i32 10
  %503 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %504 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %503, i32 0, i32 9
  %505 = load i32, i32* %504, align 8
  %506 = load i32, i32* @BSTP_PROTO_RSTP, align 4
  %507 = icmp eq i32 %505, %506
  br i1 %507, label %508, label %512

508:                                              ; preds = %492
  %509 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %510 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %509, i32 0, i32 8
  %511 = load i32, i32* %510, align 4
  br label %516

512:                                              ; preds = %492
  %513 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %514 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %513, i32 0, i32 7
  %515 = load i32, i32* %514, align 8
  br label %516

516:                                              ; preds = %512, %508
  %517 = phi i32 [ %511, %508 ], [ %515, %512 ]
  %518 = call i32 @bstp_timer_start(%struct.TYPE_8__* %502, i32 %517)
  %519 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %520 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %519, i32 0, i32 6
  %521 = load %struct.TYPE_5__*, %struct.TYPE_5__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 4
  %524 = call i32 @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %523)
  br label %525

525:                                              ; preds = %516, %487, %482, %475
  br label %526

526:                                              ; preds = %2, %525, %257, %116, %30
  %527 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %528 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %527, i32 0, i32 3
  %529 = load i32, i32* %528, align 4
  %530 = load i32, i32* @BSTP_PORT_NEWINFO, align 4
  %531 = and i32 %529, %530
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %537

533:                                              ; preds = %526
  %534 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %535 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %536 = call i32 @bstp_transmit(%struct.bstp_state* %534, %struct.bstp_port* %535)
  br label %537

537:                                              ; preds = %533, %526
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @bstp_set_all_sync(%struct.bstp_state*) #1

declare dso_local i32 @bstp_set_all_reroot(%struct.bstp_state*) #1

declare dso_local i32 @bstp_rerooted(%struct.bstp_state*, %struct.bstp_port*) #1

declare dso_local i32 @bstp_set_port_state(%struct.bstp_port*, i32) #1

declare dso_local i32 @bstp_timer_stop(%struct.TYPE_7__*) #1

declare dso_local i32 @bstp_timer_start(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bstp_transmit(%struct.bstp_state*, %struct.bstp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
