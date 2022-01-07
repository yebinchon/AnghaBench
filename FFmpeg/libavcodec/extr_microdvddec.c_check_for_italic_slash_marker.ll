; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_microdvddec.c_check_for_italic_slash_marker.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_microdvddec.c_check_for_italic_slash_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.microdvd_tag = type { i8, i32 }

@MICRODVD_TAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.microdvd_tag*, i8*)* @check_for_italic_slash_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_for_italic_slash_marker(%struct.microdvd_tag* %0, i8* %1) #0 {
  %3 = alloca %struct.microdvd_tag*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.microdvd_tag, align 4
  store %struct.microdvd_tag* %0, %struct.microdvd_tag** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 47
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.microdvd_tag*, %struct.microdvd_tag** %3, align 8
  %12 = load i32, i32* @MICRODVD_TAGS, align 4
  %13 = call i64 @indexof(i32 %12, i8 signext 121)
  %14 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %11, i64 %13
  %15 = bitcast %struct.microdvd_tag* %5 to i8*
  %16 = bitcast %struct.microdvd_tag* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 8, i1 false)
  %17 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %5, i32 0, i32 0
  store i8 121, i8* %17, align 4
  %18 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.microdvd_tag*, %struct.microdvd_tag** %3, align 8
  %22 = bitcast %struct.microdvd_tag* %5 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = call i32 @microdvd_set_tag(%struct.microdvd_tag* %21, i64 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  br label %27

27:                                               ; preds = %10, %2
  %28 = load i8*, i8** %4, align 8
  ret i8* %28
}

declare dso_local i64 @indexof(i32, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @microdvd_set_tag(%struct.microdvd_tag*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
