; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_cp_to_user_32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_cp_to_user_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_fw_32 = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ip6_fw = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@user32_addr_t = common dso_local global i32 0, align 4
@IPV6_FW_MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_fw_32*, %struct.ip6_fw*)* @cp_to_user_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_to_user_32(%struct.ip6_fw_32* %0, %struct.ip6_fw* %1) #0 {
  %3 = alloca %struct.ip6_fw_32*, align 8
  %4 = alloca %struct.ip6_fw*, align 8
  store %struct.ip6_fw_32* %0, %struct.ip6_fw_32** %3, align 8
  store %struct.ip6_fw* %1, %struct.ip6_fw** %4, align 8
  %5 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %6 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %5, i32 0, i32 22
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %9 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %8, i32 0, i32 22
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @user32_addr_t, align 4
  %11 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %12 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %11, i32 0, i32 21
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CAST_DOWN_EXPLICIT(i32 %10, i32 %13)
  %15 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %16 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %15, i32 0, i32 21
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %18 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %17, i32 0, i32 20
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %21 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %20, i32 0, i32 20
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %23 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %22, i32 0, i32 19
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %26 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %25, i32 0, i32 19
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %28 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %27, i32 0, i32 18
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %31 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %30, i32 0, i32 18
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %33 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %32, i32 0, i32 17
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %36 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %35, i32 0, i32 17
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %38 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %37, i32 0, i32 16
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %41 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %40, i32 0, i32 16
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %43 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %42, i32 0, i32 15
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %46 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %45, i32 0, i32 15
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %48 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %47, i32 0, i32 14
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %51 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %50, i32 0, i32 14
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %53 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %56 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %55, i32 0, i32 13
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %58 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %61 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %60, i32 0, i32 12
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %63 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %66 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IPV6_FW_MAX_PORTS, align 4
  %69 = call i32 @bcopy(i32 %64, i32 %67, i32 %68)
  %70 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %71 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %74 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %73, i32 0, i32 10
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %76 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %79 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %81 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %84 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %86 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %89 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %91 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %94 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @bcopy(i32 %92, i32 %95, i32 4)
  %97 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %98 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %101 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %103 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %106 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %108 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %111 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %113 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %117 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 4
  %119 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %120 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %123 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.ip6_fw*, %struct.ip6_fw** %4, align 8
  %125 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ip6_fw_32*, %struct.ip6_fw_32** %3, align 8
  %128 = getelementptr inbounds %struct.ip6_fw_32, %struct.ip6_fw_32* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  ret void
}

declare dso_local i32 @CAST_DOWN_EXPLICIT(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
