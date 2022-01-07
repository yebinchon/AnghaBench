; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_pre_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_pre_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i64, i64, i64, %struct.TYPE_18__*, %struct.TYPE_16__, i32, i64, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64 }
%struct.timeval = type { i32 }

@reannounce = common dso_local global i32 0, align 4
@is_mitm = common dso_local global i64 0, align 8
@NETPLAY_QUIRK_INITIALIZATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_pre_frame(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %8 = call %struct.TYPE_19__* (...) @config_get_ptr()
  store %struct.TYPE_19__* %8, %struct.TYPE_19__** %5, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = call i32 @retro_assert(%struct.TYPE_20__* %9)
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load i32, i32* @reannounce, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @reannounce, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* @is_mitm, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23, %16
  %27 = load i32, i32* @reannounce, align 4
  %28 = srem i32 %27, 600
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (...) @netplay_announce()
  br label %32

32:                                               ; preds = %30, %26, %23
  br label %34

33:                                               ; preds = %1
  store i32 -1, i32* @reannounce, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %41 = call i32 @netplay_frontend_paused(%struct.TYPE_20__* %40, i32 0)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NETPLAY_QUIRK_INITIALIZATION, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = call i32 @netplay_try_init_serialization(%struct.TYPE_20__* %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %120

57:                                               ; preds = %52
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %120, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %65 = call i32 @netplay_lan_ad_server(%struct.TYPE_20__* %64)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %119

70:                                               ; preds = %63
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %119, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %75
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %119, label %87

87:                                               ; preds = %81
  %88 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %88, i8 0, i64 4, i1 false)
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @socket_select(i32 %96, i32* %7, i32* null, i32* null, %struct.timeval* %6)
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %87
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 6
  %102 = call i32 @natt_read(%struct.TYPE_16__* %101)
  br label %103

103:                                              ; preds = %99, %87
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109, %103
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %117 = call i32 @netplay_announce_nat_traversal(%struct.TYPE_20__* %116)
  br label %118

118:                                              ; preds = %115, %109
  br label %119

119:                                              ; preds = %118, %81, %75, %70, %63
  br label %120

120:                                              ; preds = %119, %57, %52
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %122 = call i32 @netplay_sync_pre_frame(%struct.TYPE_20__* %121)
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %4, align 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %120
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 5
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %130
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %140 = call i32 @netplay_disconnect(%struct.TYPE_20__* %139)
  store i32 1, i32* %2, align 4
  br label %168

141:                                              ; preds = %130, %120
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %164, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %167

154:                                              ; preds = %149, %144
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159, %154, %141
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %166 = call i32 @netplay_sync_post_frame(%struct.TYPE_20__* %165, i32 1)
  store i32 0, i32* %2, align 4
  br label %168

167:                                              ; preds = %159, %149
  store i32 1, i32* %2, align 4
  br label %168

168:                                              ; preds = %167, %164, %138
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.TYPE_19__* @config_get_ptr(...) #1

declare dso_local i32 @retro_assert(%struct.TYPE_20__*) #1

declare dso_local i32 @netplay_announce(...) #1

declare dso_local i32 @netplay_frontend_paused(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @netplay_try_init_serialization(%struct.TYPE_20__*) #1

declare dso_local i32 @netplay_lan_ad_server(%struct.TYPE_20__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @socket_select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @natt_read(%struct.TYPE_16__*) #1

declare dso_local i32 @netplay_announce_nat_traversal(%struct.TYPE_20__*) #1

declare dso_local i32 @netplay_sync_pre_frame(%struct.TYPE_20__*) #1

declare dso_local i32 @netplay_disconnect(%struct.TYPE_20__*) #1

declare dso_local i32 @netplay_sync_post_frame(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
