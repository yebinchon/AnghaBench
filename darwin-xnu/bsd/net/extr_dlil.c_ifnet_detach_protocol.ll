; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_detach_protocol.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_detach_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32 (%struct.TYPE_14__*, i32)* }
%struct.if_proto = type { i64, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@if_proto = common dso_local global i32 0, align 4
@next_hash = common dso_local global i32 0, align 4
@kProtoKPI_v1 = common dso_local global i64 0, align 8
@ifproto_media_input_v1 = common dso_local global i32 0, align 4
@ifproto_media_preout = common dso_local global i8* null, align 8
@ifproto_media_event = common dso_local global i8* null, align 8
@ifproto_media_ioctl = common dso_local global i8* null, align 8
@ifproto_media_resolve_multi = common dso_local global i8* null, align 8
@ifproto_media_send_arp = common dso_local global i8* null, align 8
@ifproto_media_input_v2 = common dso_local global i32 0, align 4
@dlil_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: detached %s protocol %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"v2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_detach_protocol(%struct.TYPE_14__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.if_proto*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.if_proto* null, %struct.if_proto** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = icmp eq %struct.TYPE_14__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %6, align 4
  br label %142

14:                                               ; preds = %9
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = call i32 @ifnet_lock_exclusive(%struct.TYPE_14__* %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call %struct.if_proto* @find_attached_proto(%struct.TYPE_14__* %17, i64 %18)
  store %struct.if_proto* %19, %struct.if_proto** %5, align 8
  %20 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %21 = icmp eq %struct.if_proto* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = call i32 @ifnet_lock_done(%struct.TYPE_14__* %24)
  br label %142

26:                                               ; preds = %14
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_14__*, i32)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %33, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %37 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %34(%struct.TYPE_14__* %35, i32 %38)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @proto_hash_value(i64 %44)
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %48 = load i32, i32* @if_proto, align 4
  %49 = load i32, i32* @next_hash, align 4
  %50 = call i32 @SLIST_REMOVE(i32* %46, %struct.if_proto* %47, i32 %48, i32 %49)
  %51 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %52 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @kProtoKPI_v1, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %40
  %57 = load i32, i32* @ifproto_media_input_v1, align 4
  %58 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %59 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  store i32 %57, i32* %61, align 8
  %62 = load i8*, i8** @ifproto_media_preout, align 8
  %63 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %64 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 4
  store i8* %62, i8** %66, align 8
  %67 = load i8*, i8** @ifproto_media_event, align 8
  %68 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %69 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store i8* %67, i8** %71, align 8
  %72 = load i8*, i8** @ifproto_media_ioctl, align 8
  %73 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %74 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i8* %72, i8** %76, align 8
  %77 = load i8*, i8** @ifproto_media_resolve_multi, align 8
  %78 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %79 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i8* %77, i8** %81, align 8
  %82 = load i8*, i8** @ifproto_media_send_arp, align 8
  %83 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %84 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store i8* %82, i8** %86, align 8
  br label %118

87:                                               ; preds = %40
  %88 = load i32, i32* @ifproto_media_input_v2, align 4
  %89 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %90 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 5
  store i32 %88, i32* %92, align 8
  %93 = load i8*, i8** @ifproto_media_preout, align 8
  %94 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %95 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  store i8* %93, i8** %97, align 8
  %98 = load i8*, i8** @ifproto_media_event, align 8
  %99 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %100 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  store i8* %98, i8** %102, align 8
  %103 = load i8*, i8** @ifproto_media_ioctl, align 8
  %104 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %105 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  store i8* %103, i8** %107, align 8
  %108 = load i8*, i8** @ifproto_media_resolve_multi, align 8
  %109 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %110 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  store i8* %108, i8** %112, align 8
  %113 = load i8*, i8** @ifproto_media_send_arp, align 8
  %114 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %115 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i8* %113, i8** %117, align 8
  br label %118

118:                                              ; preds = %87, %56
  %119 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %120 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %119, i32 0, i32 1
  store i32 1, i32* %120, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = call i32 @ifnet_lock_done(%struct.TYPE_14__* %121)
  %123 = load i64, i64* @dlil_verbose, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %118
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = call i8* @if_name(%struct.TYPE_14__* %126)
  %128 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %129 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @kProtoKPI_v1, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %135 = load i64, i64* %4, align 8
  %136 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %127, i8* %134, i64 %135)
  br label %137

137:                                              ; preds = %125, %118
  %138 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %139 = call i32 @if_proto_free(%struct.if_proto* %138)
  %140 = load %struct.if_proto*, %struct.if_proto** %5, align 8
  %141 = call i32 @if_proto_free(%struct.if_proto* %140)
  br label %142

142:                                              ; preds = %137, %22, %12
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i32 @ifnet_lock_exclusive(%struct.TYPE_14__*) #1

declare dso_local %struct.if_proto* @find_attached_proto(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @ifnet_lock_done(%struct.TYPE_14__*) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.if_proto*, i32, i32) #1

declare dso_local i64 @proto_hash_value(i64) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i64) #1

declare dso_local i8* @if_name(%struct.TYPE_14__*) #1

declare dso_local i32 @if_proto_free(%struct.if_proto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
