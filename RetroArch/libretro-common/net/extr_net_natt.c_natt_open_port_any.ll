; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_natt.c_natt_open_port_any.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_natt.c_natt_open_port_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.natt_status = type { i32 }
%struct.net_ifinfo = type { i64, %struct.net_ifinfo_entry* }
%struct.net_ifinfo_entry = type { i32 }
%struct.addrinfo = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"::1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @natt_open_port_any(%struct.natt_status* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.natt_status*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [6 x i8], align 1
  %10 = alloca %struct.net_ifinfo, align 8
  %11 = alloca %struct.addrinfo, align 4
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_ifinfo_entry*, align 8
  store %struct.natt_status* %0, %struct.natt_status** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = bitcast %struct.addrinfo* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 12, i1 false)
  store i32 0, i32* %13, align 4
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @snprintf(i8* %16, i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @net_ifinfo_new(%struct.net_ifinfo* %10)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

22:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %72, %22
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.net_ifinfo, %struct.net_ifinfo* %10, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.net_ifinfo, %struct.net_ifinfo* %10, i32 0, i32 1
  %30 = load %struct.net_ifinfo_entry*, %struct.net_ifinfo_entry** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.net_ifinfo_entry, %struct.net_ifinfo_entry* %30, i64 %31
  store %struct.net_ifinfo_entry* %32, %struct.net_ifinfo_entry** %14, align 8
  %33 = load %struct.net_ifinfo_entry*, %struct.net_ifinfo_entry** %14, align 8
  %34 = getelementptr inbounds %struct.net_ifinfo_entry, %struct.net_ifinfo_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @string_is_equal(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %28
  %39 = load %struct.net_ifinfo_entry*, %struct.net_ifinfo_entry** %14, align 8
  %40 = getelementptr inbounds %struct.net_ifinfo_entry, %struct.net_ifinfo_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @string_is_equal(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %28
  br label %72

45:                                               ; preds = %38
  %46 = load %struct.net_ifinfo_entry*, %struct.net_ifinfo_entry** %14, align 8
  %47 = getelementptr inbounds %struct.net_ifinfo_entry, %struct.net_ifinfo_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %50 = call i64 @getaddrinfo_retro(i32 %48, i8* %49, %struct.addrinfo* %11, %struct.addrinfo** %12)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %45
  %53 = load %struct.natt_status*, %struct.natt_status** %5, align 8
  %54 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @natt_open_port(%struct.natt_status* %53, i32 %56, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %63, %52
  %67 = phi i1 [ true, %52 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %70 = call i32 @freeaddrinfo_retro(%struct.addrinfo* %69)
  br label %71

71:                                               ; preds = %66, %45
  br label %72

72:                                               ; preds = %71, %44
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %23

75:                                               ; preds = %23
  %76 = call i32 @net_ifinfo_free(%struct.net_ifinfo* %10)
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %21
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @net_ifinfo_new(%struct.net_ifinfo*) #2

declare dso_local i64 @string_is_equal(i32, i8*) #2

declare dso_local i64 @getaddrinfo_retro(i32, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i64 @natt_open_port(%struct.natt_status*, i32, i32, i32) #2

declare dso_local i32 @freeaddrinfo_retro(%struct.addrinfo*) #2

declare dso_local i32 @net_ifinfo_free(%struct.net_ifinfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
