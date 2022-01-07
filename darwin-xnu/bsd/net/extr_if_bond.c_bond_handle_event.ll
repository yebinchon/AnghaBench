; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_handle_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.ifnet = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i32, %struct.ifnet*, i32, i32* }
%struct.TYPE_9__ = type { i32, %struct.media_info, i32, %struct.TYPE_8__* }
%struct.media_info = type { i32, i32 }

@IF_BOND_MODE_LACP = common dso_local global i64 0, align 8
@g_bond = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s: (event) generating LINK event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, i32)* @bond_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_handle_event(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.media_info, align 4
  %10 = alloca %struct.media_info, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.ifnet* null, %struct.ifnet** %5, align 8
  %11 = bitcast %struct.media_info* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %20 [
    i32 130, label %13
    i32 129, label %14
    i32 128, label %14
  ]

13:                                               ; preds = %2
  br label %21

14:                                               ; preds = %2, %2
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = call i64 @interface_media_info(%struct.ifnet* %15)
  %17 = bitcast %struct.media_info* %10 to i64*
  store i64 %16, i64* %17, align 4
  %18 = bitcast %struct.media_info* %9 to i8*
  %19 = bitcast %struct.media_info* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 8, i1 false)
  br label %21

20:                                               ; preds = %2
  br label %155

21:                                               ; preds = %14, %13
  %22 = call i32 (...) @bond_lock()
  %23 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %24 = call %struct.TYPE_9__* @bond_lookup_port(%struct.ifnet* %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %8, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = icmp eq %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (...) @bond_unlock()
  br label %155

29:                                               ; preds = %21
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %6, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %56 [
    i32 130, label %37
    i32 129, label %43
    i32 128, label %43
  ]

37:                                               ; preds = %29
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bond_remove_interface(%struct.TYPE_8__* %38, i32 %41)
  br label %56

43:                                               ; preds = %29, %29
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = bitcast %struct.media_info* %45 to i8*
  %47 = bitcast %struct.media_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 8, i1 false)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = call i32 @bondport_link_status_changed(%struct.TYPE_9__* %53)
  br label %55

55:                                               ; preds = %52, %43
  br label %56

56:                                               ; preds = %29, %55, %37
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IF_BOND_MODE_LACP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %110

62:                                               ; preds = %56
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = call i64 @ifbond_selection(%struct.TYPE_8__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 129, i32 128
  store i32 %72, i32* %4, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load %struct.ifnet*, %struct.ifnet** %74, align 8
  store %struct.ifnet* %75, %struct.ifnet** %5, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %109

79:                                               ; preds = %62
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 129, i32 128
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %79
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_bond, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @timestamp_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load %struct.ifnet*, %struct.ifnet** %103, align 8
  store %struct.ifnet* %104, %struct.ifnet** %5, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %101, %79
  br label %109

109:                                              ; preds = %108, %66
  br label %146

110:                                              ; preds = %56
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 128, i32* %4, align 4
  br label %129

119:                                              ; preds = %113, %110
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i32 129, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %122, %119
  br label %129

129:                                              ; preds = %128, %118
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  %141 = load %struct.ifnet*, %struct.ifnet** %140, align 8
  store %struct.ifnet* %141, %struct.ifnet** %5, align 8
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %138, %132, %129
  br label %146

146:                                              ; preds = %145, %109
  %147 = call i32 (...) @bond_unlock()
  %148 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %149 = icmp ne %struct.ifnet* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @interface_link_event(%struct.ifnet* %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %146
  br label %155

155:                                              ; preds = %154, %27, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @interface_media_info(%struct.ifnet*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bond_lock(...) #2

declare dso_local %struct.TYPE_9__* @bond_lookup_port(%struct.ifnet*) #2

declare dso_local i32 @bond_unlock(...) #2

declare dso_local i32 @bond_remove_interface(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @bondport_link_status_changed(%struct.TYPE_9__*) #2

declare dso_local i64 @ifbond_selection(%struct.TYPE_8__*) #2

declare dso_local i32 @timestamp_printf(i8*, i32) #2

declare dso_local i32 @interface_link_event(%struct.ifnet*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
