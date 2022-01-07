; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_attach_protocol.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_attach_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet_attach_proto_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.if_proto = type { %struct.TYPE_4__, i32, i64, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@dlif_proto_zone = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dlif_proto_size = common dso_local global i32 0, align 4
@kProtoKPI_v1 = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: failed to attach v1 protocol %d (err=%d)\0A\00", align 1
@dlil_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: attached v1 protocol %d (count = %d)\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_attach_protocol(i32* %0, i64 %1, %struct.ifnet_attach_proto_param* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifnet_attach_proto_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.if_proto*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ifnet_attach_proto_param* %2, %struct.ifnet_attach_proto_param** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.if_proto* null, %struct.if_proto** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32 (...) @ifnet_head_lock_shared()
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.ifnet_attach_proto_param*, %struct.ifnet_attach_proto_param** %6, align 8
  %18 = icmp eq %struct.ifnet_attach_proto_param* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %7, align 4
  br label %104

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ifnet_lookup(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %7, align 4
  br label %104

27:                                               ; preds = %21
  %28 = load i32, i32* @dlif_proto_zone, align 4
  %29 = call %struct.if_proto* @zalloc(i32 %28)
  store %struct.if_proto* %29, %struct.if_proto** %8, align 8
  %30 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %31 = icmp eq %struct.if_proto* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %7, align 4
  br label %104

34:                                               ; preds = %27
  %35 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %36 = load i32, i32* @dlif_proto_size, align 4
  %37 = call i32 @bzero(%struct.if_proto* %35, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %40 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %43 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @kProtoKPI_v1, align 4
  %45 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %46 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ifnet_attach_proto_param*, %struct.ifnet_attach_proto_param** %6, align 8
  %48 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %51 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 6
  store i32 %49, i32* %53, align 8
  %54 = load %struct.ifnet_attach_proto_param*, %struct.ifnet_attach_proto_param** %6, align 8
  %55 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %58 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  store i32 %56, i32* %60, align 4
  %61 = load %struct.ifnet_attach_proto_param*, %struct.ifnet_attach_proto_param** %6, align 8
  %62 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %65 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  store i32 %63, i32* %67, align 8
  %68 = load %struct.ifnet_attach_proto_param*, %struct.ifnet_attach_proto_param** %6, align 8
  %69 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %72 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  store i32 %70, i32* %74, align 4
  %75 = load %struct.ifnet_attach_proto_param*, %struct.ifnet_attach_proto_param** %6, align 8
  %76 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %79 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 %77, i32* %81, align 8
  %82 = load %struct.ifnet_attach_proto_param*, %struct.ifnet_attach_proto_param** %6, align 8
  %83 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %86 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  %89 = load %struct.ifnet_attach_proto_param*, %struct.ifnet_attach_proto_param** %6, align 8
  %90 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %93 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 8
  %96 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %97 = load %struct.ifnet_attach_proto_param*, %struct.ifnet_attach_proto_param** %6, align 8
  %98 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ifnet_attach_proto_param*, %struct.ifnet_attach_proto_param** %6, align 8
  %101 = getelementptr inbounds %struct.ifnet_attach_proto_param, %struct.ifnet_attach_proto_param* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dlil_attach_protocol_internal(%struct.if_proto* %96, i32 %99, i32 %102, i32* %9)
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %34, %32, %25, %19
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @EEXIST, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i32*, i32** %4, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32*, i32** %4, align 8
  %116 = call i8* @if_name(i32* %115)
  %117 = load i64, i64* %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @DLIL_PRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %116, i64 %117, i32 %118)
  br label %130

120:                                              ; preds = %111, %107, %104
  %121 = load i64, i64* @dlil_verbose, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32*, i32** %4, align 8
  %125 = call i8* @if_name(i32* %124)
  %126 = load i64, i64* %5, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %125, i64 %126, i32 %127)
  br label %129

129:                                              ; preds = %123, %120
  br label %130

130:                                              ; preds = %129, %114
  %131 = call i32 (...) @ifnet_head_done()
  %132 = load i32, i32* %7, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* @IFF_UP, align 4
  %137 = load i32, i32* @IFF_UP, align 4
  %138 = call i32 @ifnet_set_flags(i32* %135, i32 %136, i32 %137)
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* @SIOCSIFFLAGS, align 4
  %141 = call i32 @ifnet_ioctl(i32* %139, i32 0, i32 %140, i32* null)
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @dlil_post_sifflags_msg(i32* %142)
  br label %152

144:                                              ; preds = %130
  %145 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %146 = icmp ne %struct.if_proto* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32, i32* @dlif_proto_zone, align 4
  %149 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %150 = call i32 @zfree(i32 %148, %struct.if_proto* %149)
  br label %151

151:                                              ; preds = %147, %144
  br label %152

152:                                              ; preds = %151, %134
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @ifnet_lookup(i32*) #1

declare dso_local %struct.if_proto* @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.if_proto*, i32) #1

declare dso_local i32 @dlil_attach_protocol_internal(%struct.if_proto*, i32, i32, i32*) #1

declare dso_local i32 @DLIL_PRINTF(i8*, i8*, i64, i32) #1

declare dso_local i8* @if_name(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i64, i32) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local i32 @ifnet_set_flags(i32*, i32, i32) #1

declare dso_local i32 @ifnet_ioctl(i32*, i32, i32, i32*) #1

declare dso_local i32 @dlil_post_sifflags_msg(i32*) #1

declare dso_local i32 @zfree(i32, %struct.if_proto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
