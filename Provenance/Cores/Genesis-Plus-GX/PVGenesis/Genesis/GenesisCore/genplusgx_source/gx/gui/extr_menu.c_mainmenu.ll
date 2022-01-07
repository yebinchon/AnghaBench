; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_menu.c_mainmenu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_menu.c_mainmenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_22__*, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, i8* }
%struct.TYPE_22__ = type { i32, i32*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i64* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@menu_main = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@IMAGE_VISIBLE = common dso_local global i32 0, align 4
@bg_main = common dso_local global %struct.TYPE_17__* null, align 8
@bg_misc = common dso_local global %struct.TYPE_27__* null, align 8
@bg_ctrls = common dso_local global %struct.TYPE_19__* null, align 8
@bg_list = common dso_local global %struct.TYPE_18__* null, align 8
@bg_saves = common dso_local global %struct.TYPE_26__* null, align 8
@system_hw = common dso_local global i32 0, align 4
@BUTTON_VISIBLE = common dso_local global i32 0, align 4
@BUTTON_ACTIVE = common dso_local global i32 0, align 4
@Button_sm_grey_png = common dso_local global i8* null, align 8
@mainmenu_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid Controllers Settings\00", align 1
@BLACK = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@SYSTEM_SMS = common dso_local global i32 0, align 4
@IO_RESET_HI = common dso_local global i32 0, align 4
@io_reg = common dso_local global i32* null, align 8
@AR_SWITCH_TRAINER = common dso_local global i32 0, align 4
@Button_sm_blue_png = common dso_local global i8* null, align 8
@AR_SWITCH_ON = common dso_local global i32 0, align 4
@Button_sm_yellow_png = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"%s/snaps/%s.png\00", align 1
@DEFAULT_PATH = common dso_local global i8* null, align 8
@rom_filename = common dso_local global i8* null, align 8
@SYSTEM_MOUSE = common dso_local global i64 0, align 8
@SYS_POWEROFF = common dso_local global i32 0, align 4
@Shutdown = common dso_local global i64 0, align 8
@generic_point_png = common dso_local global i32 0, align 4
@input = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@w_pointer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mainmenu() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = load i32, i32* @MAXPATHLEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @config, i32 0, i32 0), align 8
  %11 = call i32 @slot_autosave(i32 0, i32 %10)
  store %struct.TYPE_23__* @menu_main, %struct.TYPE_23__** %5, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %257, label %16

16:                                               ; preds = %0
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @config, i32 0, i32 1), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %16
  %20 = load i32, i32* @IMAGE_VISIBLE, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** @bg_main, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @IMAGE_VISIBLE, align 4
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** @bg_misc, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @IMAGE_VISIBLE, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** @bg_ctrls, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @IMAGE_VISIBLE, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** @bg_list, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @IMAGE_VISIBLE, align 4
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** @bg_saves, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i64 2
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 4
  br label %86

50:                                               ; preds = %16
  %51 = load i32, i32* @IMAGE_VISIBLE, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** @bg_main, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @IMAGE_VISIBLE, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** @bg_misc, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @IMAGE_VISIBLE, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** @bg_ctrls, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @IMAGE_VISIBLE, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** @bg_list, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %73
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @IMAGE_VISIBLE, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** @bg_saves, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i64 2
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %80
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %50, %19
  %87 = load i32, i32* @system_hw, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %256

89:                                               ; preds = %86
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  store i32 128, i32* %91, align 8
  %92 = load i32, i32* @IMAGE_VISIBLE, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %93
  store i32 %100, i32* %98, align 4
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 90
  store i32 %107, i32* %105, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i64 1
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 90
  store i32 %114, i32* %112, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i64 2
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 90
  store i32 %121, i32* %119, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 90
  store i32 %128, i32* %126, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 90
  store i32 %135, i32* %133, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i64 2
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 90
  store i32 %142, i32* %140, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 3, i32* %149, align 4
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i64 1
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 3, i32* %156, align 4
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i64 2
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 3, i32* %163, align 4
  %164 = load i32, i32* @BUTTON_VISIBLE, align 4
  %165 = load i32, i32* @BUTTON_ACTIVE, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i64 3
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %166
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* @BUTTON_VISIBLE, align 4
  %175 = load i32, i32* @BUTTON_ACTIVE, align 4
  %176 = or i32 %174, %175
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i64 4
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %176
  store i32 %183, i32* %181, align 8
  %184 = load i32, i32* @BUTTON_VISIBLE, align 4
  %185 = load i32, i32* @BUTTON_ACTIVE, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i64 5
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %186
  store i32 %193, i32* %191, align 8
  %194 = load i32, i32* @BUTTON_VISIBLE, align 4
  %195 = load i32, i32* @BUTTON_ACTIVE, align 4
  %196 = or i32 %194, %195
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i64 7
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %196
  store i32 %203, i32* %201, align 8
  %204 = load i32, i32* @BUTTON_VISIBLE, align 4
  %205 = load i32, i32* @BUTTON_ACTIVE, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i64 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %206
  store i32 %213, i32* %211, align 8
  %214 = load i32, i32* @BUTTON_VISIBLE, align 4
  %215 = load i32, i32* @BUTTON_ACTIVE, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i64 9
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %216
  store i32 %223, i32* %221, align 8
  %224 = call i64 (...) @areplay_get_status()
  %225 = icmp sge i64 %224, 0
  br i1 %225, label %226, label %255

226:                                              ; preds = %89
  %227 = load i32, i32* @BUTTON_VISIBLE, align 4
  %228 = load i32, i32* @BUTTON_ACTIVE, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @menu_main, i32 0, i32 2), align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i64 6
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %229
  store i32 %234, i32* %232, align 8
  %235 = load i8*, i8** @Button_sm_grey_png, align 8
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @menu_main, i32 0, i32 1), align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i64 6
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 1
  store i8* %235, i8** %238, align 8
  %239 = load i32, i32* @mainmenu_cb, align 4
  store i32 %239, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @menu_main, i32 0, i32 3), align 8
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @menu_main, i32 0, i32 2), align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i64 3
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  store i32 3, i32* %244, align 4
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @menu_main, i32 0, i32 2), align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i64 7
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  store i32 1, i32* %249, align 4
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @menu_main, i32 0, i32 2), align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i64 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 2
  store i32 2, i32* %254, align 4
  br label %255

255:                                              ; preds = %226, %89
  br label %256

256:                                              ; preds = %255, %86
  br label %257

257:                                              ; preds = %256, %0
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %259 = call i32 @GUI_InitMenu(%struct.TYPE_23__* %258)
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %261 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %260, i32 10, i32 0)
  br label %262

262:                                              ; preds = %442, %257
  %263 = load i32, i32* %4, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %443

265:                                              ; preds = %262
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %267 = call i32 @GUI_RunMenu(%struct.TYPE_23__* %266)
  switch i32 %267, label %442 [
    i32 0, label %268
    i32 1, label %294
    i32 2, label %304
    i32 3, label %306
    i32 4, label %328
    i32 5, label %365
    i32 6, label %375
    i32 7, label %421
    i32 -1, label %421
    i32 8, label %435
    i32 9, label %440
  ]

268:                                              ; preds = %265
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %270 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %269, i32 30, i32 1)
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %272 = call i32 @GUI_DeleteMenu(%struct.TYPE_23__* %271)
  %273 = call i32 (...) @loadgamemenu()
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %289

275:                                              ; preds = %268
  %276 = call i32 (...) @reloadrom()
  %277 = call i32 (...) @gx_input_FindDevices()
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %275
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %281 = call i32 @GUI_InitMenu(%struct.TYPE_23__* %280)
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %283 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %282, i32 30, i32 0)
  %284 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %442

285:                                              ; preds = %275
  %286 = load i32, i32* @BLACK, align 4
  %287 = call i32 @gxClearScreen(i32 %286)
  %288 = call i32 (...) @gxSetScreen()
  store i32 1, i32* %4, align 4
  br label %442

289:                                              ; preds = %268
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %291 = call i32 @GUI_InitMenu(%struct.TYPE_23__* %290)
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %293 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %292, i32 30, i32 0)
  br label %442

294:                                              ; preds = %265
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %296 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %295, i32 30, i32 1)
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %298 = call i32 @GUI_DeleteMenu(%struct.TYPE_23__* %297)
  %299 = call i32 (...) @optionmenu()
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %301 = call i32 @GUI_InitMenu(%struct.TYPE_23__* %300)
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %303 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %302, i32 30, i32 0)
  br label %442

304:                                              ; preds = %265
  %305 = call i32 (...) @exitmenu()
  br label %442

306:                                              ; preds = %265
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %308 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %307, i32 30, i32 1)
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %310 = call i32 @GUI_DeleteMenu(%struct.TYPE_23__* %309)
  %311 = call i32 (...) @savemenu()
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %323

313:                                              ; preds = %306
  %314 = call i32 (...) @gx_input_FindDevices()
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %313
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %318 = call i32 @GUI_InitMenu(%struct.TYPE_23__* %317)
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %320 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %319, i32 30, i32 0)
  %321 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %442

322:                                              ; preds = %313
  store i32 1, i32* %4, align 4
  br label %442

323:                                              ; preds = %306
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %325 = call i32 @GUI_InitMenu(%struct.TYPE_23__* %324)
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %327 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %326, i32 30, i32 0)
  br label %442

328:                                              ; preds = %265
  %329 = call i32 (...) @gx_input_FindDevices()
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %328
  %332 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %442

333:                                              ; preds = %328
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %335 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %334, i32 10, i32 1)
  %336 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %337 = call i32 @GUI_DeleteMenu(%struct.TYPE_23__* %336)
  %338 = load i32, i32* @BLACK, align 4
  %339 = call i32 @gxClearScreen(i32 %338)
  %340 = call i32 (...) @gxSetScreen()
  %341 = load i32, i32* @system_hw, align 4
  %342 = load i32, i32* @SYSTEM_MD, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %333
  %346 = call i32 @gen_reset(i32 0)
  br label %364

347:                                              ; preds = %333
  %348 = load i32, i32* @system_hw, align 4
  %349 = load i32, i32* @SYSTEM_SMS, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %358

351:                                              ; preds = %347
  %352 = load i32, i32* @IO_RESET_HI, align 4
  %353 = xor i32 %352, -1
  %354 = load i32*, i32** @io_reg, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 13
  %356 = load i32, i32* %355, align 4
  %357 = and i32 %356, %353
  store i32 %357, i32* %355, align 4
  br label %363

358:                                              ; preds = %347
  %359 = call i32 (...) @system_init()
  %360 = call i32 (...) @system_reset()
  %361 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @config, i32 0, i32 0), align 8
  %362 = call i32 @slot_autoload(i32 0, i32 %361)
  br label %363

363:                                              ; preds = %358, %351
  br label %364

364:                                              ; preds = %363, %345
  store i32 1, i32* %4, align 4
  br label %442

365:                                              ; preds = %265
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %367 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %366, i32 30, i32 1)
  %368 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %369 = call i32 @GUI_DeleteMenu(%struct.TYPE_23__* %368)
  %370 = call i32 (...) @CheatMenu()
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %372 = call i32 @GUI_InitMenu(%struct.TYPE_23__* %371)
  %373 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %374 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %373, i32 30, i32 0)
  br label %442

375:                                              ; preds = %265
  %376 = call i64 (...) @areplay_get_status()
  %377 = add nsw i64 %376, 1
  %378 = load i32, i32* @AR_SWITCH_TRAINER, align 4
  %379 = add nsw i32 %378, 1
  %380 = sext i32 %379 to i64
  %381 = srem i64 %377, %380
  %382 = trunc i64 %381 to i32
  store i32 %382, i32* %3, align 4
  %383 = load i32, i32* %3, align 4
  %384 = call i32 @areplay_set_status(i32 %383)
  %385 = call i64 (...) @areplay_get_status()
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %3, align 4
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %388 = call i32 @GUI_DeleteMenu(%struct.TYPE_23__* %387)
  %389 = load i32, i32* %3, align 4
  %390 = load i32, i32* @AR_SWITCH_TRAINER, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %399

392:                                              ; preds = %375
  %393 = load i8*, i8** @Button_sm_blue_png, align 8
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_21__*, %struct.TYPE_21__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %396, i64 6
  %398 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %397, i32 0, i32 1
  store i8* %393, i8** %398, align 8
  br label %418

399:                                              ; preds = %375
  %400 = load i32, i32* %3, align 4
  %401 = load i32, i32* @AR_SWITCH_ON, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %410

403:                                              ; preds = %399
  %404 = load i8*, i8** @Button_sm_yellow_png, align 8
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i32 0, i32 1
  %407 = load %struct.TYPE_21__*, %struct.TYPE_21__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %407, i64 6
  %409 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %408, i32 0, i32 1
  store i8* %404, i8** %409, align 8
  br label %417

410:                                              ; preds = %399
  %411 = load i8*, i8** @Button_sm_grey_png, align 8
  %412 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %412, i32 0, i32 1
  %414 = load %struct.TYPE_21__*, %struct.TYPE_21__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %414, i64 6
  %416 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %415, i32 0, i32 1
  store i8* %411, i8** %416, align 8
  br label %417

417:                                              ; preds = %410, %403
  br label %418

418:                                              ; preds = %417, %392
  %419 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %420 = call i32 @GUI_InitMenu(%struct.TYPE_23__* %419)
  br label %442

421:                                              ; preds = %265, %265
  %422 = load i32, i32* @system_hw, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %434

424:                                              ; preds = %421
  %425 = call i32 (...) @gx_input_FindDevices()
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %429, label %427

427:                                              ; preds = %424
  %428 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %442

429:                                              ; preds = %424
  %430 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %431 = call i32 @GUI_DrawMenuFX(%struct.TYPE_23__* %430, i32 10, i32 1)
  %432 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %433 = call i32 @GUI_DeleteMenu(%struct.TYPE_23__* %432)
  store i32 1, i32* %4, align 4
  br label %434

434:                                              ; preds = %429, %421
  br label %442

435:                                              ; preds = %265
  %436 = load i8*, i8** @DEFAULT_PATH, align 8
  %437 = load i8*, i8** @rom_filename, align 8
  %438 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %436, i8* %437)
  %439 = call i32 @gxSaveScreenshot(i8* %9)
  br label %442

440:                                              ; preds = %265
  %441 = call i32 (...) @showrominfo()
  br label %442

442:                                              ; preds = %265, %440, %435, %434, %427, %418, %365, %364, %331, %323, %322, %316, %304, %294, %289, %285, %279
  br label %262

443:                                              ; preds = %262
  br label %444

444:                                              ; preds = %447, %443
  %445 = call i64 @PAD_ButtonsHeld(i32 0)
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %444
  %448 = call i32 (...) @VIDEO_WaitVSync()
  %449 = call i32 (...) @PAD_ScanPads()
  br label %444

450:                                              ; preds = %444
  %451 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %451)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @slot_autosave(i32, i32) #2

declare dso_local i64 @areplay_get_status(...) #2

declare dso_local i32 @GUI_InitMenu(%struct.TYPE_23__*) #2

declare dso_local i32 @GUI_DrawMenuFX(%struct.TYPE_23__*, i32, i32) #2

declare dso_local i32 @GUI_RunMenu(%struct.TYPE_23__*) #2

declare dso_local i32 @GUI_DeleteMenu(%struct.TYPE_23__*) #2

declare dso_local i32 @loadgamemenu(...) #2

declare dso_local i32 @reloadrom(...) #2

declare dso_local i32 @gx_input_FindDevices(...) #2

declare dso_local i32 @GUI_WaitPrompt(i8*, i8*) #2

declare dso_local i32 @gxClearScreen(i32) #2

declare dso_local i32 @gxSetScreen(...) #2

declare dso_local i32 @optionmenu(...) #2

declare dso_local i32 @exitmenu(...) #2

declare dso_local i32 @savemenu(...) #2

declare dso_local i32 @gen_reset(i32) #2

declare dso_local i32 @system_init(...) #2

declare dso_local i32 @system_reset(...) #2

declare dso_local i32 @slot_autoload(i32, i32) #2

declare dso_local i32 @CheatMenu(...) #2

declare dso_local i32 @areplay_set_status(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @gxSaveScreenshot(i8*) #2

declare dso_local i32 @showrominfo(...) #2

declare dso_local i64 @PAD_ButtonsHeld(i32) #2

declare dso_local i32 @VIDEO_WaitVSync(...) #2

declare dso_local i32 @PAD_ScanPads(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
