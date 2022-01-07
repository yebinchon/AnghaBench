; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_attach_protocol_v2.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_attach_protocol_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet_attach_proto_param_v2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.if_proto = type { %struct.TYPE_4__, i32, i64, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@dlif_proto_zone = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kProtoKPI_v2 = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: failed to attach v2 protocol %d (err=%d)\0A\00", align 1
@dlil_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: attached v2 protocol %d (count = %d)\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_attach_protocol_v2(i32* %0, i64 %1, %struct.ifnet_attach_proto_param_v2* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ifnet_attach_proto_param_v2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.if_proto*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ifnet_attach_proto_param_v2* %2, %struct.ifnet_attach_proto_param_v2** %6, align 8
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
  %17 = load %struct.ifnet_attach_proto_param_v2*, %struct.ifnet_attach_proto_param_v2** %6, align 8
  %18 = icmp eq %struct.ifnet_attach_proto_param_v2* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %7, align 4
  br label %103

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ifnet_lookup(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %7, align 4
  br label %103

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
  br label %103

34:                                               ; preds = %27
  %35 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %36 = call i32 @bzero(%struct.if_proto* %35, i32 48)
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %39 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %42 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @kProtoKPI_v2, align 4
  %44 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %45 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ifnet_attach_proto_param_v2*, %struct.ifnet_attach_proto_param_v2** %6, align 8
  %47 = getelementptr inbounds %struct.ifnet_attach_proto_param_v2, %struct.ifnet_attach_proto_param_v2* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %50 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 6
  store i32 %48, i32* %52, align 8
  %53 = load %struct.ifnet_attach_proto_param_v2*, %struct.ifnet_attach_proto_param_v2** %6, align 8
  %54 = getelementptr inbounds %struct.ifnet_attach_proto_param_v2, %struct.ifnet_attach_proto_param_v2* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %57 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  store i32 %55, i32* %59, align 4
  %60 = load %struct.ifnet_attach_proto_param_v2*, %struct.ifnet_attach_proto_param_v2** %6, align 8
  %61 = getelementptr inbounds %struct.ifnet_attach_proto_param_v2, %struct.ifnet_attach_proto_param_v2* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %64 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  store i32 %62, i32* %66, align 8
  %67 = load %struct.ifnet_attach_proto_param_v2*, %struct.ifnet_attach_proto_param_v2** %6, align 8
  %68 = getelementptr inbounds %struct.ifnet_attach_proto_param_v2, %struct.ifnet_attach_proto_param_v2* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %71 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  store i32 %69, i32* %73, align 4
  %74 = load %struct.ifnet_attach_proto_param_v2*, %struct.ifnet_attach_proto_param_v2** %6, align 8
  %75 = getelementptr inbounds %struct.ifnet_attach_proto_param_v2, %struct.ifnet_attach_proto_param_v2* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %78 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i32 %76, i32* %80, align 8
  %81 = load %struct.ifnet_attach_proto_param_v2*, %struct.ifnet_attach_proto_param_v2** %6, align 8
  %82 = getelementptr inbounds %struct.ifnet_attach_proto_param_v2, %struct.ifnet_attach_proto_param_v2* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %85 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  %88 = load %struct.ifnet_attach_proto_param_v2*, %struct.ifnet_attach_proto_param_v2** %6, align 8
  %89 = getelementptr inbounds %struct.ifnet_attach_proto_param_v2, %struct.ifnet_attach_proto_param_v2* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %92 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  %95 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %96 = load %struct.ifnet_attach_proto_param_v2*, %struct.ifnet_attach_proto_param_v2** %6, align 8
  %97 = getelementptr inbounds %struct.ifnet_attach_proto_param_v2, %struct.ifnet_attach_proto_param_v2* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ifnet_attach_proto_param_v2*, %struct.ifnet_attach_proto_param_v2** %6, align 8
  %100 = getelementptr inbounds %struct.ifnet_attach_proto_param_v2, %struct.ifnet_attach_proto_param_v2* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dlil_attach_protocol_internal(%struct.if_proto* %95, i32 %98, i32 %101, i32* %9)
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %34, %32, %25, %19
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @EEXIST, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32*, i32** %4, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32*, i32** %4, align 8
  %115 = call i8* @if_name(i32* %114)
  %116 = load i64, i64* %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @DLIL_PRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %115, i64 %116, i32 %117)
  br label %129

119:                                              ; preds = %110, %106, %103
  %120 = load i64, i64* @dlil_verbose, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i32*, i32** %4, align 8
  %124 = call i8* @if_name(i32* %123)
  %125 = load i64, i64* %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %124, i64 %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %119
  br label %129

129:                                              ; preds = %128, %113
  %130 = call i32 (...) @ifnet_head_done()
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* @IFF_UP, align 4
  %136 = load i32, i32* @IFF_UP, align 4
  %137 = call i32 @ifnet_set_flags(i32* %134, i32 %135, i32 %136)
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* @SIOCSIFFLAGS, align 4
  %140 = call i32 @ifnet_ioctl(i32* %138, i32 0, i32 %139, i32* null)
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @dlil_post_sifflags_msg(i32* %141)
  br label %151

143:                                              ; preds = %129
  %144 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %145 = icmp ne %struct.if_proto* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, i32* @dlif_proto_zone, align 4
  %148 = load %struct.if_proto*, %struct.if_proto** %8, align 8
  %149 = call i32 @zfree(i32 %147, %struct.if_proto* %148)
  br label %150

150:                                              ; preds = %146, %143
  br label %151

151:                                              ; preds = %150, %133
  %152 = load i32, i32* %7, align 4
  ret i32 %152
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
