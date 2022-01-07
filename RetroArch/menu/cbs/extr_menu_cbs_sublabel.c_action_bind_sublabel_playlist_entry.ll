; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_playlist_entry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_sublabel.c_action_bind_sublabel_playlist_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i8* }
%struct.playlist_entry = type { i8*, i64, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"ozone\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@PLAYLIST_RUNTIME_PER_CORE = common dso_local global i64 0, align 8
@PLAYLIST_RUNTIME_AGGREGATE = common dso_local global i64 0, align 8
@MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HISTORY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FAVORITES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@PLAYLIST_RUNTIME_UNKNOWN = common dso_local global i64 0, align 8
@PLAYLIST_RUNTIME_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*, i8*, i64)* @action_bind_sublabel_playlist_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_bind_sublabel_playlist_entry(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.playlist_entry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [64 x i8], align 16
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %16, align 8
  store i32* null, i32** %17, align 8
  store %struct.playlist_entry* null, %struct.playlist_entry** %18, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %7
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @string_is_equal(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %7
  store i32 0, i32* %8, align 4
  br label %193

35:                                               ; preds = %27
  %36 = call i32* (...) @playlist_get_cached()
  store i32* %36, i32** %17, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %193

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @playlist_get_size(i32* %42)
  %44 = icmp uge i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %193

46:                                               ; preds = %40
  %47 = load i32*, i32** %17, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @playlist_get_index(i32* %47, i32 %48, %struct.playlist_entry** %18)
  %50 = load %struct.playlist_entry*, %struct.playlist_entry** %18, align 8
  %51 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @string_is_empty(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %46
  %56 = load %struct.playlist_entry*, %struct.playlist_entry** %18, align 8
  %57 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @string_is_equal(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %46
  store i32 0, i32* %8, align 4
  br label %193

62:                                               ; preds = %55
  %63 = load i8*, i8** %14, align 8
  %64 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_CORE, align 4
  %65 = call i8* @msg_hash_to_str(i32 %64)
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @strlcpy(i8* %63, i8* %65, i64 %66)
  %68 = load i8*, i8** %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @strlcat(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  %71 = load i8*, i8** %14, align 8
  %72 = load %struct.playlist_entry*, %struct.playlist_entry** %18, align 8
  %73 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %15, align 8
  %76 = call i32 @strlcat(i8* %71, i8* %74, i64 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PLAYLIST_RUNTIME_PER_CORE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %62
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %83, %62
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PLAYLIST_RUNTIME_AGGREGATE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %96, %83
  store i32 0, i32* %8, align 4
  br label %193

103:                                              ; preds = %96, %89
  %104 = load i8*, i8** %12, align 8
  %105 = load i32, i32* @MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY, align 4
  %106 = call i8* @msg_hash_to_str(i32 %105)
  %107 = call i64 @string_is_equal(i8* %104, i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %140, label %109

109:                                              ; preds = %103
  %110 = load i8*, i8** %12, align 8
  %111 = load i32, i32* @MENU_ENUM_LABEL_HISTORY_TAB, align 4
  %112 = call i8* @msg_hash_to_str(i32 %111)
  %113 = call i64 @string_is_equal(i8* %110, i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %140, label %115

115:                                              ; preds = %109
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST, align 4
  %118 = call i8* @msg_hash_to_str(i32 %117)
  %119 = call i64 @string_is_equal(i8* %116, i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %140, label %121

121:                                              ; preds = %115
  %122 = load i8*, i8** %12, align 8
  %123 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES_TAB, align 4
  %124 = call i8* @msg_hash_to_str(i32 %123)
  %125 = call i64 @string_is_equal(i8* %122, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %121
  %128 = load i8*, i8** %12, align 8
  %129 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST, align 4
  %130 = call i8* @msg_hash_to_str(i32 %129)
  %131 = call i64 @string_is_equal(i8* %128, i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %127
  %134 = load i8*, i8** %12, align 8
  %135 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %136 = call i8* @msg_hash_to_str(i32 %135)
  %137 = call i64 @string_is_equal(i8* %134, i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  store i32 0, i32* %8, align 4
  br label %193

140:                                              ; preds = %133, %127, %121, %115, %109, %103
  %141 = load %struct.playlist_entry*, %struct.playlist_entry** %18, align 8
  %142 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @PLAYLIST_RUNTIME_UNKNOWN, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load i32*, i32** %17, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @runtime_update_playlist(i32* %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %140
  %151 = load %struct.playlist_entry*, %struct.playlist_entry** %18, align 8
  %152 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @PLAYLIST_RUNTIME_VALID, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %192

156:                                              ; preds = %150
  store i32 0, i32* %19, align 4
  %157 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  store i8 10, i8* %157, align 16
  %158 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 1
  store i8 0, i8* %158, align 1
  %159 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %160 = load %struct.playlist_entry*, %struct.playlist_entry** %18, align 8
  %161 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %160, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @strlcat(i8* %159, i8* %162, i64 64)
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* %19, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 %165
  store i8 10, i8* %166, align 1
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 %169
  store i8 0, i8* %170, align 1
  %171 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %172 = load %struct.playlist_entry*, %struct.playlist_entry** %18, align 8
  %173 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %172, i32 0, i32 3
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @strlcat(i8* %171, i8* %174, i64 64)
  store i32 %175, i32* %19, align 4
  %176 = load i32, i32* %19, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %156
  %179 = load i32, i32* %19, align 4
  %180 = icmp sge i32 %179, 64
  br i1 %180, label %181, label %182

181:                                              ; preds = %178, %156
  store i32 0, i32* %19, align 4
  br label %182

182:                                              ; preds = %181, %178
  %183 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %184 = call i64 @string_is_empty(i8* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %182
  %187 = load i8*, i8** %14, align 8
  %188 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %189 = load i64, i64* %15, align 8
  %190 = call i32 @strlcat(i8* %187, i8* %188, i64 %189)
  br label %191

191:                                              ; preds = %186, %182
  br label %192

192:                                              ; preds = %191, %150
  store i32 0, i32* %8, align 4
  br label %193

193:                                              ; preds = %192, %139, %102, %61, %45, %39, %34
  %194 = load i32, i32* %8, align 4
  ret i32 %194
}

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i32 @playlist_get_size(i32*) #1

declare dso_local i32 @playlist_get_index(i32*, i32, %struct.playlist_entry**) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @runtime_update_playlist(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
