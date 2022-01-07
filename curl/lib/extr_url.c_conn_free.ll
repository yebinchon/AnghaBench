; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_conn_free.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_conn_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connectdata*)* @conn_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_free(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %3 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %4 = icmp ne %struct.connectdata* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %166

6:                                                ; preds = %1
  %7 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %8 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %7, i32 0, i32 12
  %9 = call i32 @free_idnconverted_hostname(%struct.TYPE_8__* %8)
  %10 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 11
  %12 = call i32 @free_idnconverted_hostname(%struct.TYPE_8__* %11)
  %13 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @free_idnconverted_hostname(%struct.TYPE_8__* %15)
  %17 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i32 @free_idnconverted_hostname(%struct.TYPE_8__* %19)
  %21 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %22 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %21, i32 0, i32 19
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @Curl_safefree(i32 %23)
  %25 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %26 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %25, i32 0, i32 18
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Curl_safefree(i32 %27)
  %29 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %30 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %29, i32 0, i32 17
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @Curl_safefree(i32 %31)
  %33 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %34 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %33, i32 0, i32 16
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @Curl_safefree(i32 %35)
  %37 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %38 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %37, i32 0, i32 15
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Curl_safefree(i32 %39)
  %41 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %42 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @Curl_safefree(i32 %44)
  %46 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %47 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @Curl_safefree(i32 %49)
  %51 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %52 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @Curl_safefree(i32 %54)
  %56 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %57 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @Curl_safefree(i32 %59)
  %61 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %62 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %61, i32 0, i32 14
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @Curl_safefree(i32 %64)
  %66 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %67 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %66, i32 0, i32 14
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @Curl_safefree(i32 %69)
  %71 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %72 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %71, i32 0, i32 14
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @Curl_safefree(i32 %74)
  %76 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %77 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %76, i32 0, i32 14
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @Curl_safefree(i32 %79)
  %81 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %82 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %81, i32 0, i32 14
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @Curl_safefree(i32 %84)
  %86 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %87 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %86, i32 0, i32 14
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @Curl_safefree(i32 %89)
  %91 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %92 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %91, i32 0, i32 14
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @Curl_safefree(i32 %94)
  %96 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %97 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %96, i32 0, i32 14
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @Curl_safefree(i32 %99)
  %101 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %102 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %101, i32 0, i32 14
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @Curl_safefree(i32 %104)
  %106 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %107 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %106, i32 0, i32 14
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @Curl_safefree(i32 %109)
  %111 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %112 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %111, i32 0, i32 13
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @Curl_safefree(i32 %113)
  %115 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %116 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %115, i32 0, i32 12
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @Curl_safefree(i32 %118)
  %120 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %121 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %120, i32 0, i32 11
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @Curl_safefree(i32 %123)
  %125 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %126 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %125, i32 0, i32 10
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @Curl_safefree(i32 %127)
  %129 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %130 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @Curl_safefree(i32 %131)
  %133 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %134 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @Curl_safefree(i32 %137)
  %139 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %140 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @Curl_safefree(i32 %143)
  %145 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %146 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @Curl_safefree(i32 %147)
  %149 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %150 = call i32 @conn_reset_all_postponed_data(%struct.connectdata* %149)
  %151 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %152 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %151, i32 0, i32 5
  %153 = call i32 @Curl_llist_destroy(i32* %152, i32* null)
  %154 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %155 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @Curl_safefree(i32 %156)
  %158 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %159 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %158, i32 0, i32 3
  %160 = call i32 @Curl_free_primary_ssl_config(i32* %159)
  %161 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %162 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %161, i32 0, i32 2
  %163 = call i32 @Curl_free_primary_ssl_config(i32* %162)
  %164 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %165 = call i32 @free(%struct.connectdata* %164)
  br label %166

166:                                              ; preds = %6, %5
  ret void
}

declare dso_local i32 @free_idnconverted_hostname(%struct.TYPE_8__*) #1

declare dso_local i32 @Curl_safefree(i32) #1

declare dso_local i32 @conn_reset_all_postponed_data(%struct.connectdata*) #1

declare dso_local i32 @Curl_llist_destroy(i32*, i32*) #1

declare dso_local i32 @Curl_free_primary_ssl_config(i32*) #1

declare dso_local i32 @free(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
