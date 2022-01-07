; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_cp_pipe_to_64_user.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_cp_pipe_to_64_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_pipe = type { i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dn_pipe_64 = type { i32, %struct.TYPE_3__, i8*, i8*, i8*, i32, i8*, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8* }

@user64_addr_t = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@DN_IS_PIPE = common dso_local global i8* null, align 8
@USER_ADDR_NULL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dn_pipe*, %struct.dn_pipe_64*)* @cp_pipe_to_64_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cp_pipe_to_64_user(%struct.dn_pipe* %0, %struct.dn_pipe_64* %1) #0 {
  %3 = alloca %struct.dn_pipe*, align 8
  %4 = alloca %struct.dn_pipe_64*, align 8
  %5 = alloca i8*, align 8
  store %struct.dn_pipe* %0, %struct.dn_pipe** %3, align 8
  store %struct.dn_pipe_64* %1, %struct.dn_pipe_64** %4, align 8
  %6 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %7 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %6, i32 0, i32 13
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %10 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %9, i32 0, i32 16
  store i32 %8, i32* %10, align 4
  %11 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %12 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %15 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %14, i32 0, i32 15
  store i32 %13, i32* %15, align 8
  %16 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %17 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %20 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %22 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %21, i32 0, i32 11
  %23 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %24 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %23, i32 0, i32 14
  %25 = call i32 @bcopy(i32* %22, %struct.TYPE_4__* %24, i32 4)
  %26 = load i32, i32* @user64_addr_t, align 4
  %27 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %28 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %27, i32 0, i32 14
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @CAST_DOWN(i32 %26, i8* %30)
  %32 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %33 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %32, i32 0, i32 14
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %36 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %35, i32 0, i32 10
  %37 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %38 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %37, i32 0, i32 13
  %39 = call i32 @bcopy(i32* %36, %struct.TYPE_4__* %38, i32 4)
  %40 = load i32, i32* @user64_addr_t, align 4
  %41 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %42 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %41, i32 0, i32 13
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @CAST_DOWN(i32 %40, i8* %44)
  %46 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %47 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %46, i32 0, i32 13
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  %49 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %50 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %49, i32 0, i32 9
  %51 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %52 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %51, i32 0, i32 12
  %53 = call i32 @bcopy(i32* %50, %struct.TYPE_4__* %52, i32 4)
  %54 = load i32, i32* @user64_addr_t, align 4
  %55 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %56 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %55, i32 0, i32 12
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @CAST_DOWN(i32 %54, i8* %58)
  %60 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %61 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %60, i32 0, i32 12
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  %63 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %64 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %67 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 4
  %68 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %69 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %72 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 8
  %73 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %74 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %77 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %79 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %82 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %84 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %87 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %86, i32 0, i32 7
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* @IFNAMSIZ, align 4
  %90 = call i32 @bcopy(i32* %85, %struct.TYPE_4__* %88, i32 %89)
  %91 = load i32, i32* @user64_addr_t, align 4
  %92 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %93 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @CAST_DOWN(i32 %91, i8* %94)
  %96 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %97 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %96, i32 0, i32 6
  store i8* %95, i8** %97, align 8
  %98 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %99 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %102 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %104 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %103, i32 0, i32 1
  %105 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %106 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %105, i32 0, i32 1
  %107 = call i32 @cp_flow_set_to_64_user(i32* %104, %struct.TYPE_3__* %106)
  %108 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %109 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %110, 1000
  %112 = load i32, i32* @hz, align 4
  %113 = mul nsw i32 %112, 10
  %114 = sdiv i32 %111, %113
  %115 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %116 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @user64_addr_t, align 4
  %118 = load i8*, i8** @DN_IS_PIPE, align 8
  %119 = call i8* @CAST_DOWN(i32 %117, i8* %118)
  %120 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %121 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** @USER_ADDR_NULL, align 8
  %123 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %124 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %126 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %125, i32 0, i32 3
  store i8* %122, i8** %126, align 8
  %127 = load i8*, i8** @USER_ADDR_NULL, align 8
  %128 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %129 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  store i8* %127, i8** %130, align 8
  %131 = load i8*, i8** @USER_ADDR_NULL, align 8
  %132 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %133 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store i8* %131, i8** %134, align 8
  %135 = load i8*, i8** @USER_ADDR_NULL, align 8
  %136 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %137 = getelementptr inbounds %struct.dn_pipe_64, %struct.dn_pipe_64* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store i8* %135, i8** %138, align 8
  %139 = load %struct.dn_pipe_64*, %struct.dn_pipe_64** %4, align 8
  %140 = bitcast %struct.dn_pipe_64* %139 to i8*
  %141 = getelementptr inbounds i8, i8* %140, i64 128
  store i8* %141, i8** %5, align 8
  %142 = load %struct.dn_pipe*, %struct.dn_pipe** %3, align 8
  %143 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %142, i32 0, i32 1
  %144 = load i8*, i8** %5, align 8
  %145 = call i8* @dn_copy_set_64(i32* %143, i8* %144)
  ret i8* %145
}

declare dso_local i32 @bcopy(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i8* @CAST_DOWN(i32, i8*) #1

declare dso_local i32 @cp_flow_set_to_64_user(i32*, %struct.TYPE_3__*) #1

declare dso_local i8* @dn_copy_set_64(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
