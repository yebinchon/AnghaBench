; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_console_lib.c_str_2_mac.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_console_lib.c_str_2_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str_2_mac(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = call i32 @strlen(i8* %11)
  %13 = icmp ne i32 %12, 17
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %118, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 17
  br i1 %18, label %19, label %121

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = srem i32 %20, 3
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 58
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %122

31:                                               ; preds = %23
  br label %118

32:                                               ; preds = %19
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 48
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 57
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 16
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %48, %53
  %55 = sub nsw i32 %54, 48
  store i32 %55, i32* %7, align 4
  br label %109

56:                                               ; preds = %39, %32
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 65
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp sle i32 %68, 70
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %71, 16
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %72, %77
  %79 = sub nsw i32 %78, 65
  %80 = add nsw i32 %79, 10
  store i32 %80, i32* %7, align 4
  br label %108

81:                                               ; preds = %63, %56
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 97
  br i1 %87, label %88, label %106

88:                                               ; preds = %81
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp sle i32 %93, 102
  br i1 %94, label %95, label %106

95:                                               ; preds = %88
  %96 = load i32, i32* %7, align 4
  %97 = mul nsw i32 %96, 16
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %97, %102
  %104 = sub nsw i32 %103, 97
  %105 = add nsw i32 %104, 10
  store i32 %105, i32* %7, align 4
  br label %107

106:                                              ; preds = %88, %81
  store i32 0, i32* %3, align 4
  br label %122

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %70
  br label %109

109:                                              ; preds = %108, %46
  %110 = load i32, i32* %6, align 4
  %111 = srem i32 %110, 3
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %5, align 8
  store i32 %114, i32* %115, align 4
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %113, %109
  br label %118

118:                                              ; preds = %117, %31
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %16

121:                                              ; preds = %16
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %106, %30, %14
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
