; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/system/extr_missing_libc_functions.c_buildEmptyIfa.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/system/extr_missing_libc_functions.c_buildEmptyIfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i8*, %struct.ifaddrs*, %struct.ifaddrs*, %struct.ifaddrs*, i32 }
%struct.sockaddr = type { i8*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, i32 }

@wiiu_iface_name = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifaddrs* ()* @buildEmptyIfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifaddrs* @buildEmptyIfa() #0 {
  %1 = alloca %struct.ifaddrs*, align 8
  %2 = alloca %struct.ifaddrs*, align 8
  %3 = call i64 @malloc(i32 40)
  %4 = inttoptr i64 %3 to %struct.ifaddrs*
  store %struct.ifaddrs* %4, %struct.ifaddrs** %2, align 8
  %5 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %6 = icmp ne %struct.ifaddrs* %5, null
  br i1 %6, label %7, label %81

7:                                                ; preds = %0
  %8 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %9 = bitcast %struct.ifaddrs* %8 to %struct.sockaddr*
  %10 = call i32 @memset(%struct.sockaddr* %9, i32 0, i32 40)
  %11 = load i32, i32* @wiiu_iface_name, align 4
  %12 = call i32 @strdup(i32 %11)
  %13 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %14 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = call i64 @malloc(i32 4)
  %16 = inttoptr i64 %15 to %struct.sockaddr*
  %17 = bitcast %struct.sockaddr* %16 to %struct.ifaddrs*
  %18 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %19 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %18, i32 0, i32 3
  store %struct.ifaddrs* %17, %struct.ifaddrs** %19, align 8
  %20 = call i64 @malloc(i32 4)
  %21 = inttoptr i64 %20 to %struct.sockaddr*
  %22 = bitcast %struct.sockaddr* %21 to %struct.ifaddrs*
  %23 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %24 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %23, i32 0, i32 2
  store %struct.ifaddrs* %22, %struct.ifaddrs** %24, align 8
  %25 = call i64 @malloc(i32 4)
  %26 = inttoptr i64 %25 to %struct.sockaddr*
  %27 = bitcast %struct.sockaddr* %26 to %struct.ifaddrs*
  %28 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %29 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %28, i32 0, i32 1
  store %struct.ifaddrs* %27, %struct.ifaddrs** %29, align 8
  %30 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %31 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %7
  %35 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %36 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %35, i32 0, i32 3
  %37 = load %struct.ifaddrs*, %struct.ifaddrs** %36, align 8
  %38 = icmp ne %struct.ifaddrs* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %41 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %40, i32 0, i32 2
  %42 = load %struct.ifaddrs*, %struct.ifaddrs** %41, align 8
  %43 = icmp ne %struct.ifaddrs* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %46 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %45, i32 0, i32 1
  %47 = load %struct.ifaddrs*, %struct.ifaddrs** %46, align 8
  %48 = icmp ne %struct.ifaddrs* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44, %39, %34, %7
  br label %83

50:                                               ; preds = %44
  %51 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %52 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %51, i32 0, i32 3
  %53 = load %struct.ifaddrs*, %struct.ifaddrs** %52, align 8
  %54 = bitcast %struct.ifaddrs* %53 to %struct.sockaddr*
  %55 = call i32 @memset(%struct.sockaddr* %54, i32 0, i32 4)
  %56 = load i8*, i8** @AF_INET, align 8
  %57 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %58 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %57, i32 0, i32 3
  %59 = load %struct.ifaddrs*, %struct.ifaddrs** %58, align 8
  %60 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %59, i32 0, i32 0
  store i8* %56, i8** %60, align 8
  %61 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %62 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %61, i32 0, i32 2
  %63 = load %struct.ifaddrs*, %struct.ifaddrs** %62, align 8
  %64 = bitcast %struct.ifaddrs* %63 to %struct.sockaddr*
  %65 = call i32 @memset(%struct.sockaddr* %64, i32 0, i32 4)
  %66 = load i8*, i8** @AF_INET, align 8
  %67 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %68 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %67, i32 0, i32 2
  %69 = load %struct.ifaddrs*, %struct.ifaddrs** %68, align 8
  %70 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %69, i32 0, i32 0
  store i8* %66, i8** %70, align 8
  %71 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %72 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %71, i32 0, i32 1
  %73 = load %struct.ifaddrs*, %struct.ifaddrs** %72, align 8
  %74 = bitcast %struct.ifaddrs* %73 to %struct.sockaddr*
  %75 = call i32 @memset(%struct.sockaddr* %74, i32 0, i32 4)
  %76 = load i8*, i8** @AF_INET, align 8
  %77 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %78 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %77, i32 0, i32 1
  %79 = load %struct.ifaddrs*, %struct.ifaddrs** %78, align 8
  %80 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %79, i32 0, i32 0
  store i8* %76, i8** %80, align 8
  br label %81

81:                                               ; preds = %50, %0
  %82 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  store %struct.ifaddrs* %82, %struct.ifaddrs** %1, align 8
  br label %87

83:                                               ; preds = %49
  %84 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %85 = bitcast %struct.ifaddrs* %84 to %struct.sockaddr*
  %86 = call i32 @freeifaddrs(%struct.sockaddr* %85)
  store %struct.ifaddrs* null, %struct.ifaddrs** %1, align 8
  br label %87

87:                                               ; preds = %83, %81
  %88 = load %struct.ifaddrs*, %struct.ifaddrs** %1, align 8
  ret %struct.ifaddrs* %88
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @freeifaddrs(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
