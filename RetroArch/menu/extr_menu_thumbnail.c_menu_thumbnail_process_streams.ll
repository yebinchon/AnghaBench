; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail.c_menu_thumbnail_process_streams.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail.c_menu_thumbnail_process_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }

@MENU_THUMBNAIL_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@menu_thumbnail_stream_delay = common dso_local global i64 0, align 8
@MENU_THUMBNAIL_STATUS_MISSING = common dso_local global i8* null, align 8
@MENU_THUMBNAIL_RIGHT = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_thumbnail_process_streams(i32* %0, i32* %1, i64 %2, %struct.TYPE_6__* %3, %struct.TYPE_6__* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %6
  br label %168

24:                                               ; preds = %20
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %143

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MENU_THUMBNAIL_STATUS_UNKNOWN, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MENU_THUMBNAIL_STATUS_UNKNOWN, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %142

45:                                               ; preds = %42, %27
  %46 = call float (...) @menu_animation_get_delta_time()
  store float %46, float* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load float, float* %15, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sitofp i64 %53 to float
  %55 = fadd float %54, %50
  %56 = fptosi float %55 to i64
  store i64 %56, i64* %52, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @menu_thumbnail_stream_delay, align 8
  %61 = icmp sgt i64 %59, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %49, %45
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load float, float* %15, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sitofp i64 %70 to float
  %72 = fadd float %71, %67
  %73 = fptosi float %72 to i64
  store i64 %73, i64* %69, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @menu_thumbnail_stream_delay, align 8
  %78 = icmp sgt i64 %76, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %66, %63
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %141

86:                                               ; preds = %83, %80
  %87 = load i32*, i32** %7, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %8, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %89, %86
  br label %168

93:                                               ; preds = %89
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @menu_thumbnail_set_content_playlist(i32* %94, i32* %95, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %120, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %104 = call i32 @menu_thumbnail_reset(%struct.TYPE_6__* %103)
  %105 = load i8*, i8** @MENU_THUMBNAIL_STATUS_MISSING, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %102, %99
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %114 = call i32 @menu_thumbnail_reset(%struct.TYPE_6__* %113)
  %115 = load i8*, i8** @MENU_THUMBNAIL_STATUS_MISSING, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %112, %109
  br label %168

120:                                              ; preds = %93
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %129 = call i32 @menu_thumbnail_request(i32* %124, i32 %125, i32* %126, i64 %127, %struct.TYPE_6__* %128)
  br label %130

130:                                              ; preds = %123, %120
  %131 = load i32, i32* %17, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %139 = call i32 @menu_thumbnail_request(i32* %134, i32 %135, i32* %136, i64 %137, %struct.TYPE_6__* %138)
  br label %140

140:                                              ; preds = %133, %130
  br label %141

141:                                              ; preds = %140, %83
  br label %142

142:                                              ; preds = %141, %42
  br label %168

143:                                              ; preds = %24
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @MENU_THUMBNAIL_STATUS_UNKNOWN, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  br label %155

152:                                              ; preds = %143
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %154 = call i32 @menu_thumbnail_reset(%struct.TYPE_6__* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @MENU_THUMBNAIL_STATUS_UNKNOWN, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  br label %167

164:                                              ; preds = %155
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %166 = call i32 @menu_thumbnail_reset(%struct.TYPE_6__* %165)
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %23, %92, %119, %167, %142
  ret void
}

declare dso_local float @menu_animation_get_delta_time(...) #1

declare dso_local i32 @menu_thumbnail_set_content_playlist(i32*, i32*, i64) #1

declare dso_local i32 @menu_thumbnail_reset(%struct.TYPE_6__*) #1

declare dso_local i32 @menu_thumbnail_request(i32*, i32, i32*, i64, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
