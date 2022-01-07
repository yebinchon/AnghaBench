; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_cbs.c_menu_cbs_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_cbs.c_menu_cbs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i8*, i8*, i32, i64, i32, %struct.TYPE_22__* }

@MSG_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SCAN\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"CONTENT SWITCH\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"DEFERRED PUSH\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"REFRESH\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"GET VALUE\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"GET TITLE\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"LABEL\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"SUBLABEL\00", align 1
@RARCH_MENU_CTL_BIND_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_cbs_init(i8* %0, %struct.TYPE_22__* %1, i8* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load i64, i64* @MSG_UNKNOWN, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %18, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %19, align 8
  %24 = load i32*, i32** %19, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  br label %258

27:                                               ; preds = %6
  %28 = call i32 @menu_entries_get_last_stack(i32* null, i8** %15, i32* null, i32* %18, i32* null)
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %15, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %27
  br label %258

35:                                               ; preds = %31
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @msg_hash_calculate(i8* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i8*, i8** %15, align 8
  %39 = call i32 @msg_hash_calculate(i8* %38)
  store i32 %39, i32* %17, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @string_is_empty(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = load i8*, i8** %10, align 8
  br label %47

45:                                               ; preds = %35
  %46 = load i8*, i8** %9, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i8* [ %44, %43 ], [ %46, %45 ]
  store i8* %48, i8** %14, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i64, i64* %12, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @menu_cbs_init_bind_ok(%struct.TYPE_22__* %49, i8* %50, i8* %51, i32 %52, i64 %53, i32 %54, i32 %55)
  %57 = load i8*, i8** %14, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 17
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @menu_cbs_init_log(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @menu_cbs_init_bind_cancel(%struct.TYPE_22__* %62, i8* %63, i8* %64, i32 %65, i64 %66)
  %68 = load i8*, i8** %14, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 16
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @menu_cbs_init_log(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @menu_cbs_init_bind_scan(%struct.TYPE_22__* %73, i8* %74, i8* %75, i32 %76, i64 %77)
  %79 = load i8*, i8** %14, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 15
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @menu_cbs_init_log(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @menu_cbs_init_bind_start(%struct.TYPE_22__* %84, i8* %85, i8* %86, i32 %87, i64 %88)
  %90 = load i8*, i8** %14, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 14
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @menu_cbs_init_log(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @menu_cbs_init_bind_select(%struct.TYPE_22__* %95, i8* %96, i8* %97, i32 %98, i64 %99)
  %101 = load i8*, i8** %14, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 13
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @menu_cbs_init_log(i8* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @menu_cbs_init_bind_info(%struct.TYPE_22__* %106, i8* %107, i8* %108, i32 %109, i64 %110)
  %112 = load i8*, i8** %14, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 12
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @menu_cbs_init_log(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i64, i64* %12, align 8
  %122 = call i32 @menu_cbs_init_bind_content_list_switch(%struct.TYPE_22__* %117, i8* %118, i8* %119, i32 %120, i64 %121)
  %123 = load i8*, i8** %14, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 11
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @menu_cbs_init_log(i8* %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i64, i64* %12, align 8
  %133 = call i32 @menu_cbs_init_bind_up(%struct.TYPE_22__* %128, i8* %129, i8* %130, i32 %131, i64 %132)
  %134 = load i8*, i8** %14, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 10
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @menu_cbs_init_log(i8* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i64, i64* %12, align 8
  %144 = call i32 @menu_cbs_init_bind_down(%struct.TYPE_22__* %139, i8* %140, i8* %141, i32 %142, i64 %143)
  %145 = load i8*, i8** %14, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @menu_cbs_init_log(i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %148)
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %151 = load i8*, i8** %9, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load i64, i64* %12, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @menu_cbs_init_bind_left(%struct.TYPE_22__* %150, i8* %151, i8* %152, i32 %153, i64 %154, i8* %155, i32 %156)
  %158 = load i8*, i8** %14, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @menu_cbs_init_log(i8* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %161)
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = load i32, i32* %11, align 4
  %167 = load i64, i64* %12, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = load i32, i32* %16, align 4
  %170 = call i32 @menu_cbs_init_bind_right(%struct.TYPE_22__* %163, i8* %164, i8* %165, i32 %166, i64 %167, i8* %168, i32 %169)
  %171 = load i8*, i8** %14, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @menu_cbs_init_log(i8* %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %174)
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %177 = load i8*, i8** %9, align 8
  %178 = load i8*, i8** %10, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i64, i64* %12, align 8
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @menu_cbs_init_bind_deferred_push(%struct.TYPE_22__* %176, i8* %177, i8* %178, i32 %179, i64 %180, i32 %181)
  %183 = load i8*, i8** %14, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @menu_cbs_init_log(i8* %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %186)
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %189 = load i8*, i8** %9, align 8
  %190 = load i8*, i8** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = load i64, i64* %12, align 8
  %193 = call i32 @menu_cbs_init_bind_refresh(%struct.TYPE_22__* %188, i8* %189, i8* %190, i32 %191, i64 %192)
  %194 = load i8*, i8** %14, align 8
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @menu_cbs_init_log(i8* %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %197)
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %200 = load i8*, i8** %9, align 8
  %201 = load i8*, i8** %10, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load i64, i64* %12, align 8
  %204 = call i32 @menu_cbs_init_bind_get_string_representation(%struct.TYPE_22__* %199, i8* %200, i8* %201, i32 %202, i64 %203)
  %205 = load i8*, i8** %14, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @menu_cbs_init_log(i8* %205, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %208)
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %211 = load i8*, i8** %9, align 8
  %212 = load i8*, i8** %10, align 8
  %213 = load i32, i32* %11, align 4
  %214 = load i64, i64* %12, align 8
  %215 = load i32, i32* %16, align 4
  %216 = call i32 @menu_cbs_init_bind_title(%struct.TYPE_22__* %210, i8* %211, i8* %212, i32 %213, i64 %214, i32 %215)
  %217 = load i8*, i8** %14, align 8
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @menu_cbs_init_log(i8* %217, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %220)
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %223 = load i8*, i8** %9, align 8
  %224 = load i8*, i8** %10, align 8
  %225 = load i32, i32* %11, align 4
  %226 = load i64, i64* %12, align 8
  %227 = call i32 @menu_cbs_init_bind_label(%struct.TYPE_22__* %222, i8* %223, i8* %224, i32 %225, i64 %226)
  %228 = load i8*, i8** %14, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @menu_cbs_init_log(i8* %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %231)
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = load i8*, i8** %10, align 8
  %236 = load i32, i32* %11, align 4
  %237 = load i64, i64* %12, align 8
  %238 = call i32 @menu_cbs_init_bind_sublabel(%struct.TYPE_22__* %233, i8* %234, i8* %235, i32 %236, i64 %237)
  %239 = load i8*, i8** %14, align 8
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @menu_cbs_init_log(i8* %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %242)
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 5
  store %struct.TYPE_22__* %244, %struct.TYPE_22__** %245, align 8
  %246 = load i8*, i8** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store i8* %246, i8** %247, align 8
  %248 = load i8*, i8** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  store i8* %248, i8** %249, align 8
  %250 = load i32, i32* %11, align 4
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  store i32 %250, i32* %251, align 8
  %252 = load i64, i64* %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 3
  store i64 %252, i64* %253, align 8
  %254 = load i32, i32* %16, align 4
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 4
  store i32 %254, i32* %255, align 8
  %256 = load i32, i32* @RARCH_MENU_CTL_BIND_INIT, align 4
  %257 = call i32 @menu_driver_ctl(i32 %256, %struct.TYPE_23__* %13)
  br label %258

258:                                              ; preds = %47, %34, %26
  ret void
}

declare dso_local i32 @menu_entries_get_last_stack(i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @msg_hash_calculate(i8*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @menu_cbs_init_bind_ok(%struct.TYPE_22__*, i8*, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @menu_cbs_init_log(i8*, i8*, i32) #1

declare dso_local i32 @menu_cbs_init_bind_cancel(%struct.TYPE_22__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @menu_cbs_init_bind_scan(%struct.TYPE_22__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @menu_cbs_init_bind_start(%struct.TYPE_22__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @menu_cbs_init_bind_select(%struct.TYPE_22__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @menu_cbs_init_bind_info(%struct.TYPE_22__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @menu_cbs_init_bind_content_list_switch(%struct.TYPE_22__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @menu_cbs_init_bind_up(%struct.TYPE_22__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @menu_cbs_init_bind_down(%struct.TYPE_22__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @menu_cbs_init_bind_left(%struct.TYPE_22__*, i8*, i8*, i32, i64, i8*, i32) #1

declare dso_local i32 @menu_cbs_init_bind_right(%struct.TYPE_22__*, i8*, i8*, i32, i64, i8*, i32) #1

declare dso_local i32 @menu_cbs_init_bind_deferred_push(%struct.TYPE_22__*, i8*, i8*, i32, i64, i32) #1

declare dso_local i32 @menu_cbs_init_bind_refresh(%struct.TYPE_22__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @menu_cbs_init_bind_get_string_representation(%struct.TYPE_22__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @menu_cbs_init_bind_title(%struct.TYPE_22__*, i8*, i8*, i32, i64, i32) #1

declare dso_local i32 @menu_cbs_init_bind_label(%struct.TYPE_22__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @menu_cbs_init_bind_sublabel(%struct.TYPE_22__*, i8*, i8*, i32, i64) #1

declare dso_local i32 @menu_driver_ctl(i32, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
