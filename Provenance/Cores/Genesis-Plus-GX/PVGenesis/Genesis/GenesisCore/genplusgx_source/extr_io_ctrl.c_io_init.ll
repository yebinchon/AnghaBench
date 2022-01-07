; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_io_ctrl.c_io_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i8*, i8* }

@input = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@dummy_write = common dso_local global i8* null, align 8
@port = common dso_local global %struct.TYPE_3__* null, align 8
@gamepad_1_read = common dso_local global i8* null, align 8
@gamepad_1_write = common dso_local global i8* null, align 8
@mouse_write = common dso_local global i8* null, align 8
@mouse_read = common dso_local global i8* null, align 8
@activator_1_write = common dso_local global i8* null, align 8
@activator_1_read = common dso_local global i8* null, align 8
@xe_a1p_1_write = common dso_local global i8* null, align 8
@xe_a1p_1_read = common dso_local global i8* null, align 8
@wayplay_1_write = common dso_local global i8* null, align 8
@wayplay_1_read = common dso_local global i8* null, align 8
@teamplayer_1_write = common dso_local global i8* null, align 8
@teamplayer_1_read = common dso_local global i8* null, align 8
@phaser_1_read = common dso_local global i8* null, align 8
@paddle_1_write = common dso_local global i8* null, align 8
@paddle_1_read = common dso_local global i8* null, align 8
@sportspad_1_write = common dso_local global i8* null, align 8
@sportspad_1_read = common dso_local global i8* null, align 8
@dummy_read = common dso_local global i8* null, align 8
@gamepad_2_read = common dso_local global i8* null, align 8
@gamepad_2_write = common dso_local global i8* null, align 8
@xe_a1p_2_write = common dso_local global i8* null, align 8
@xe_a1p_2_read = common dso_local global i8* null, align 8
@activator_2_write = common dso_local global i8* null, align 8
@activator_2_read = common dso_local global i8* null, align 8
@menacer_read = common dso_local global i8* null, align 8
@justifier_write = common dso_local global i8* null, align 8
@justifier_read = common dso_local global i8* null, align 8
@wayplay_2_write = common dso_local global i8* null, align 8
@wayplay_2_read = common dso_local global i8* null, align 8
@teamplayer_2_write = common dso_local global i8* null, align 8
@teamplayer_2_read = common dso_local global i8* null, align 8
@phaser_2_read = common dso_local global i8* null, align 8
@paddle_2_write = common dso_local global i8* null, align 8
@paddle_2_read = common dso_local global i8* null, align 8
@sportspad_2_write = common dso_local global i8* null, align 8
@sportspad_2_read = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @io_init() #0 {
  %1 = call i32 (...) @input_init()
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 0
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %95 [
    i32 133, label %5
    i32 136, label %14
    i32 134, label %23
    i32 139, label %32
    i32 128, label %41
    i32 129, label %50
    i32 130, label %59
    i32 137, label %68
    i32 132, label %77
    i32 131, label %86
  ]

5:                                                ; preds = %0
  %6 = load i8*, i8** @dummy_write, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %6, i8** %9, align 8
  %10 = load i8*, i8** @gamepad_1_read, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* %10, i8** %13, align 8
  br label %104

14:                                               ; preds = %0
  %15 = load i8*, i8** @gamepad_1_write, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i8* %15, i8** %18, align 8
  %19 = load i8*, i8** @gamepad_1_read, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  br label %104

23:                                               ; preds = %0
  %24 = load i8*, i8** @mouse_write, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** @mouse_read, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  br label %104

32:                                               ; preds = %0
  %33 = load i8*, i8** @activator_1_write, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load i8*, i8** @activator_1_read, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  br label %104

41:                                               ; preds = %0
  %42 = load i8*, i8** @xe_a1p_1_write, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** @xe_a1p_1_read, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  br label %104

50:                                               ; preds = %0
  %51 = load i8*, i8** @wayplay_1_write, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load i8*, i8** @wayplay_1_read, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  br label %104

59:                                               ; preds = %0
  %60 = load i8*, i8** @teamplayer_1_write, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** @teamplayer_1_read, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  br label %104

68:                                               ; preds = %0
  %69 = load i8*, i8** @dummy_write, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i8* %69, i8** %72, align 8
  %73 = load i8*, i8** @phaser_1_read, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  br label %104

77:                                               ; preds = %0
  %78 = load i8*, i8** @paddle_1_write, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i8* %78, i8** %81, align 8
  %82 = load i8*, i8** @paddle_1_read, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  br label %104

86:                                               ; preds = %0
  %87 = load i8*, i8** @sportspad_1_write, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load i8*, i8** @sportspad_1_read, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  br label %104

95:                                               ; preds = %0
  %96 = load i8*, i8** @dummy_write, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  %100 = load i8*, i8** @dummy_read, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  br label %104

104:                                              ; preds = %95, %86, %77, %68, %59, %50, %41, %32, %23, %14, %5
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input, i32 0, i32 0), align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %216 [
    i32 133, label %108
    i32 136, label %117
    i32 134, label %126
    i32 128, label %135
    i32 139, label %144
    i32 135, label %153
    i32 138, label %162
    i32 129, label %171
    i32 130, label %180
    i32 137, label %189
    i32 132, label %198
    i32 131, label %207
  ]

108:                                              ; preds = %104
  %109 = load i8*, i8** @dummy_write, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i8* %109, i8** %112, align 8
  %113 = load i8*, i8** @gamepad_2_read, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 8
  br label %225

117:                                              ; preds = %104
  %118 = load i8*, i8** @gamepad_2_write, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  %122 = load i8*, i8** @gamepad_2_read, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  br label %225

126:                                              ; preds = %104
  %127 = load i8*, i8** @mouse_write, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  store i8* %127, i8** %130, align 8
  %131 = load i8*, i8** @mouse_read, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i8* %131, i8** %134, align 8
  br label %225

135:                                              ; preds = %104
  %136 = load i8*, i8** @xe_a1p_2_write, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i8* %136, i8** %139, align 8
  %140 = load i8*, i8** @xe_a1p_2_read, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 1
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i8* %140, i8** %143, align 8
  br label %225

144:                                              ; preds = %104
  %145 = load i8*, i8** @activator_2_write, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  store i8* %145, i8** %148, align 8
  %149 = load i8*, i8** @activator_2_read, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store i8* %149, i8** %152, align 8
  br label %225

153:                                              ; preds = %104
  %154 = load i8*, i8** @dummy_write, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 1
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  store i8* %154, i8** %157, align 8
  %158 = load i8*, i8** @menacer_read, align 8
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 1
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  store i8* %158, i8** %161, align 8
  br label %225

162:                                              ; preds = %104
  %163 = load i8*, i8** @justifier_write, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 1
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  store i8* %163, i8** %166, align 8
  %167 = load i8*, i8** @justifier_read, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i64 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  store i8* %167, i8** %170, align 8
  br label %225

171:                                              ; preds = %104
  %172 = load i8*, i8** @wayplay_2_write, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 1
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  store i8* %172, i8** %175, align 8
  %176 = load i8*, i8** @wayplay_2_read, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 1
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  store i8* %176, i8** %179, align 8
  br label %225

180:                                              ; preds = %104
  %181 = load i8*, i8** @teamplayer_2_write, align 8
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i64 1
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  store i8* %181, i8** %184, align 8
  %185 = load i8*, i8** @teamplayer_2_read, align 8
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 1
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  store i8* %185, i8** %188, align 8
  br label %225

189:                                              ; preds = %104
  %190 = load i8*, i8** @dummy_write, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i64 1
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  store i8* %190, i8** %193, align 8
  %194 = load i8*, i8** @phaser_2_read, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 1
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  store i8* %194, i8** %197, align 8
  br label %225

198:                                              ; preds = %104
  %199 = load i8*, i8** @paddle_2_write, align 8
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 1
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  store i8* %199, i8** %202, align 8
  %203 = load i8*, i8** @paddle_2_read, align 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 1
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  store i8* %203, i8** %206, align 8
  br label %225

207:                                              ; preds = %104
  %208 = load i8*, i8** @sportspad_2_write, align 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i64 1
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 1
  store i8* %208, i8** %211, align 8
  %212 = load i8*, i8** @sportspad_2_read, align 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 1
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  store i8* %212, i8** %215, align 8
  br label %225

216:                                              ; preds = %104
  %217 = load i8*, i8** @dummy_write, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i64 1
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  store i8* %217, i8** %220, align 8
  %221 = load i8*, i8** @dummy_read, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i64 1
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  store i8* %221, i8** %224, align 8
  br label %225

225:                                              ; preds = %216, %207, %198, %189, %180, %171, %162, %153, %144, %135, %126, %117, %108
  %226 = load i8*, i8** @dummy_write, align 8
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i64 2
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 1
  store i8* %226, i8** %229, align 8
  %230 = load i8*, i8** @dummy_read, align 8
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i64 2
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 0
  store i8* %230, i8** %233, align 8
  ret void
}

declare dso_local i32 @input_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
