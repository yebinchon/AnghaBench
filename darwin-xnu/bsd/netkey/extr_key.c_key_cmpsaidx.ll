; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_cmpsaidx.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_cmpsaidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasindex = type { i64, i64, i64, i64, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@CMP_EXACTLY = common dso_local global i32 0, align 4
@CMP_REQID = common dso_local global i32 0, align 4
@CMP_MODE = common dso_local global i32 0, align 4
@IPSEC_MODE_ANY = common dso_local global i64 0, align 8
@CMP_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secasindex*, %struct.secasindex*, i32)* @key_cmpsaidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_cmpsaidx(%struct.secasindex* %0, %struct.secasindex* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.secasindex*, align 8
  %6 = alloca %struct.secasindex*, align 8
  %7 = alloca i32, align 4
  store %struct.secasindex* %0, %struct.secasindex** %5, align 8
  store %struct.secasindex* %1, %struct.secasindex** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %9 = icmp eq %struct.secasindex* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %12 = icmp eq %struct.secasindex* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %165

14:                                               ; preds = %10, %3
  %15 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %16 = icmp eq %struct.secasindex* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %19 = icmp eq %struct.secasindex* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  store i32 0, i32* %4, align 4
  br label %165

21:                                               ; preds = %17
  %22 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %23 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %28 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %31 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %165

35:                                               ; preds = %26, %21
  %36 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %37 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %40 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %165

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @CMP_EXACTLY, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %90

48:                                               ; preds = %44
  %49 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %50 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %53 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %165

57:                                               ; preds = %48
  %58 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %59 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %62 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %165

66:                                               ; preds = %57
  %67 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %68 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %67, i32 0, i32 5
  %69 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %70 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %69, i32 0, i32 5
  %71 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %72 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @bcmp(%struct.TYPE_3__* %68, %struct.TYPE_3__* %70, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %66
  %78 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %79 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %78, i32 0, i32 4
  %80 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %81 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %80, i32 0, i32 4
  %82 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %83 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @bcmp(%struct.TYPE_3__* %79, %struct.TYPE_3__* %81, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77, %66
  store i32 0, i32* %4, align 4
  br label %165

89:                                               ; preds = %77
  br label %164

90:                                               ; preds = %44
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @CMP_REQID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %97 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %102 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %105 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %165

109:                                              ; preds = %100, %95
  br label %110

110:                                              ; preds = %109, %90
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @CMP_MODE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %117 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @IPSEC_MODE_ANY, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %123 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %126 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %165

130:                                              ; preds = %121, %115
  br label %131

131:                                              ; preds = %130, %110
  %132 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %133 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %132, i32 0, i32 5
  %134 = bitcast %struct.TYPE_3__* %133 to %struct.sockaddr*
  %135 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %136 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %135, i32 0, i32 5
  %137 = bitcast %struct.TYPE_3__* %136 to %struct.sockaddr*
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @CMP_PORT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 1, i32 0
  %144 = call i64 @key_sockaddrcmp(%struct.sockaddr* %134, %struct.sockaddr* %137, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %165

147:                                              ; preds = %131
  %148 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %149 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %148, i32 0, i32 4
  %150 = bitcast %struct.TYPE_3__* %149 to %struct.sockaddr*
  %151 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %152 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %151, i32 0, i32 4
  %153 = bitcast %struct.TYPE_3__* %152 to %struct.sockaddr*
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @CMP_PORT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 1, i32 0
  %160 = call i64 @key_sockaddrcmp(%struct.sockaddr* %150, %struct.sockaddr* %153, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %165

163:                                              ; preds = %147
  br label %164

164:                                              ; preds = %163, %89
  store i32 1, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %162, %146, %129, %108, %88, %65, %56, %43, %34, %20, %13
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i64 @bcmp(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @key_sockaddrcmp(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
