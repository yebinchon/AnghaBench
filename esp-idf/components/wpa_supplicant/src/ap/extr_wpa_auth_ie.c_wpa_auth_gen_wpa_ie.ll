; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth_ie.c_wpa_auth_gen_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth_ie.c_wpa_auth_gen_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@WPA_PROTO_WPA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_auth_gen_wpa_ie(%struct.wpa_authenticator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_authenticator*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [128 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %3, align 8
  %7 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  store i32* %7, i32** %4, align 8
  %8 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @WPA_PROTO_RSN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %16, i32 0, i32 2
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %20 = getelementptr inbounds i32, i32* %19, i64 512
  %21 = load i32*, i32** %4, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32 @wpa_write_rsn_ie(%struct.TYPE_4__* %17, i32* %18, i32 %26, i32* null)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %109

32:                                               ; preds = %15
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %4, align 8
  br label %37

37:                                               ; preds = %32, %1
  %38 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %39 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @WPA_PROTO_WPA, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %37
  %46 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %47 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %46, i32 0, i32 2
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %50 = getelementptr inbounds i32, i32* %49, i64 512
  %51 = load i32*, i32** %4, align 8
  %52 = ptrtoint i32* %50 to i64
  %53 = ptrtoint i32* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @wpa_write_wpa_ie(%struct.TYPE_4__* %47, i32* %48, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %109

62:                                               ; preds = %45
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %4, align 8
  br label %67

67:                                               ; preds = %62, %37
  %68 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %69 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @os_free(i32* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32* @os_malloc(i32 %78)
  %80 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %81 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %83 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %67
  store i32 -1, i32* %2, align 4
  br label %109

87:                                               ; preds = %67
  %88 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %89 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memcpy(i32* %90, i32* %91, i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %108 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %87, %86, %60, %30
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @wpa_write_rsn_ie(%struct.TYPE_4__*, i32*, i32, i32*) #1

declare dso_local i32 @wpa_write_wpa_ie(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
