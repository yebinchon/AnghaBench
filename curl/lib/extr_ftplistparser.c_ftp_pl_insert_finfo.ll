; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftplistparser.c_ftp_pl_insert_finfo.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftplistparser.c_ftp_pl_insert_finfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.WildcardData }
%struct.TYPE_6__ = type { i64 (i32, i32, i8*)*, i32 }
%struct.WildcardData = type { i32, %struct.curl_llist, %struct.ftp_wc* }
%struct.curl_llist = type { i32 }
%struct.ftp_wc = type { %struct.ftp_parselist_data* }
%struct.ftp_parselist_data = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.fileinfo = type { i32, %struct.curl_fileinfo }
%struct.curl_fileinfo = type { i8*, i8*, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8* }

@TRUE = common dso_local global i32 0, align 4
@CURLFILETYPE_SYMLINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@FALSE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, %struct.fileinfo*)* @ftp_pl_insert_finfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_pl_insert_finfo(%struct.connectdata* %0, %struct.fileinfo* %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.fileinfo*, align 8
  %5 = alloca i64 (i32, i32, i8*)*, align 8
  %6 = alloca %struct.WildcardData*, align 8
  %7 = alloca %struct.ftp_wc*, align 8
  %8 = alloca %struct.curl_llist*, align 8
  %9 = alloca %struct.ftp_parselist_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.curl_fileinfo*, align 8
  %12 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store %struct.fileinfo* %1, %struct.fileinfo** %4, align 8
  %13 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %14 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store %struct.WildcardData* %16, %struct.WildcardData** %6, align 8
  %17 = load %struct.WildcardData*, %struct.WildcardData** %6, align 8
  %18 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %17, i32 0, i32 2
  %19 = load %struct.ftp_wc*, %struct.ftp_wc** %18, align 8
  store %struct.ftp_wc* %19, %struct.ftp_wc** %7, align 8
  %20 = load %struct.WildcardData*, %struct.WildcardData** %6, align 8
  %21 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %20, i32 0, i32 1
  store %struct.curl_llist* %21, %struct.curl_llist** %8, align 8
  %22 = load %struct.ftp_wc*, %struct.ftp_wc** %7, align 8
  %23 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %22, i32 0, i32 0
  %24 = load %struct.ftp_parselist_data*, %struct.ftp_parselist_data** %23, align 8
  store %struct.ftp_parselist_data* %24, %struct.ftp_parselist_data** %9, align 8
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8
  %27 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %26, i32 0, i32 1
  store %struct.curl_fileinfo* %27, %struct.curl_fileinfo** %11, align 8
  %28 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %11, align 8
  %29 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load %struct.ftp_parselist_data*, %struct.ftp_parselist_data** %9, align 8
  %33 = getelementptr inbounds %struct.ftp_parselist_data, %struct.ftp_parselist_data* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  %38 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %11, align 8
  %39 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ftp_parselist_data*, %struct.ftp_parselist_data** %9, align 8
  %41 = getelementptr inbounds %struct.ftp_parselist_data, %struct.ftp_parselist_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %2
  %46 = load i8*, i8** %12, align 8
  %47 = load %struct.ftp_parselist_data*, %struct.ftp_parselist_data** %9, align 8
  %48 = getelementptr inbounds %struct.ftp_parselist_data, %struct.ftp_parselist_data* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %46, i64 %51
  br label %54

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %53, %45
  %55 = phi i8* [ %52, %45 ], [ null, %53 ]
  %56 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %11, align 8
  %57 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load %struct.ftp_parselist_data*, %struct.ftp_parselist_data** %9, align 8
  %60 = getelementptr inbounds %struct.ftp_parselist_data, %struct.ftp_parselist_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.ftp_parselist_data*, %struct.ftp_parselist_data** %9, align 8
  %67 = getelementptr inbounds %struct.ftp_parselist_data, %struct.ftp_parselist_data* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %65, i64 %70
  br label %73

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %64
  %74 = phi i8* [ %71, %64 ], [ null, %72 ]
  %75 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %11, align 8
  %76 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load %struct.ftp_parselist_data*, %struct.ftp_parselist_data** %9, align 8
  %79 = getelementptr inbounds %struct.ftp_parselist_data, %struct.ftp_parselist_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = load i8*, i8** %12, align 8
  %85 = load %struct.ftp_parselist_data*, %struct.ftp_parselist_data** %9, align 8
  %86 = getelementptr inbounds %struct.ftp_parselist_data, %struct.ftp_parselist_data* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %84, i64 %89
  br label %92

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %91, %83
  %93 = phi i8* [ %90, %83 ], [ null, %91 ]
  %94 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %11, align 8
  %95 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store i8* %93, i8** %96, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.ftp_parselist_data*, %struct.ftp_parselist_data** %9, align 8
  %99 = getelementptr inbounds %struct.ftp_parselist_data, %struct.ftp_parselist_data* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %97, i64 %102
  %104 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %11, align 8
  %105 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  store i8* %103, i8** %106, align 8
  %107 = load %struct.ftp_parselist_data*, %struct.ftp_parselist_data** %9, align 8
  %108 = getelementptr inbounds %struct.ftp_parselist_data, %struct.ftp_parselist_data* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %92
  %113 = load i8*, i8** %12, align 8
  %114 = load %struct.ftp_parselist_data*, %struct.ftp_parselist_data** %9, align 8
  %115 = getelementptr inbounds %struct.ftp_parselist_data, %struct.ftp_parselist_data* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %113, i64 %118
  br label %121

120:                                              ; preds = %92
  br label %121

121:                                              ; preds = %120, %112
  %122 = phi i8* [ %119, %112 ], [ null, %120 ]
  %123 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %11, align 8
  %124 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  store i8* %122, i8** %125, align 8
  %126 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %127 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64 (i32, i32, i8*)*, i64 (i32, i32, i8*)** %130, align 8
  store i64 (i32, i32, i8*)* %131, i64 (i32, i32, i8*)** %5, align 8
  %132 = load i64 (i32, i32, i8*)*, i64 (i32, i32, i8*)** %5, align 8
  %133 = icmp ne i64 (i32, i32, i8*)* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %121
  store i64 (i32, i32, i8*)* @Curl_fnmatch, i64 (i32, i32, i8*)** %5, align 8
  br label %135

135:                                              ; preds = %134, %121
  %136 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %137 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = call i32 @Curl_set_in_callback(%struct.TYPE_8__* %138, i32 1)
  %140 = load i64 (i32, i32, i8*)*, i64 (i32, i32, i8*)** %5, align 8
  %141 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %142 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.WildcardData*, %struct.WildcardData** %6, align 8
  %148 = getelementptr inbounds %struct.WildcardData, %struct.WildcardData* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %11, align 8
  %151 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 %140(i32 %146, i32 %149, i8* %152)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %135
  %156 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %11, align 8
  %157 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @CURLFILETYPE_SYMLINK, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %155
  %162 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %11, align 8
  %163 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %176

167:                                              ; preds = %161
  %168 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %11, align 8
  %169 = getelementptr inbounds %struct.curl_fileinfo, %struct.curl_fileinfo* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @strstr(i8* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* @FALSE, align 4
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %174, %167, %161, %155
  br label %179

177:                                              ; preds = %135
  %178 = load i32, i32* @FALSE, align 4
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %177, %176
  %180 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %181 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %180, i32 0, i32 0
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = call i32 @Curl_set_in_callback(%struct.TYPE_8__* %182, i32 0)
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %179
  %187 = load %struct.curl_llist*, %struct.curl_llist** %8, align 8
  %188 = load %struct.curl_llist*, %struct.curl_llist** %8, align 8
  %189 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.curl_fileinfo*, %struct.curl_fileinfo** %11, align 8
  %192 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8
  %193 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %192, i32 0, i32 0
  %194 = call i32 @Curl_llist_insert_next(%struct.curl_llist* %187, i32 %190, %struct.curl_fileinfo* %191, i32* %193)
  br label %198

195:                                              ; preds = %179
  %196 = load %struct.fileinfo*, %struct.fileinfo** %4, align 8
  %197 = call i32 @Curl_fileinfo_cleanup(%struct.fileinfo* %196)
  br label %198

198:                                              ; preds = %195, %186
  %199 = load %struct.ftp_wc*, %struct.ftp_wc** %7, align 8
  %200 = getelementptr inbounds %struct.ftp_wc, %struct.ftp_wc* %199, i32 0, i32 0
  %201 = load %struct.ftp_parselist_data*, %struct.ftp_parselist_data** %200, align 8
  %202 = getelementptr inbounds %struct.ftp_parselist_data, %struct.ftp_parselist_data* %201, i32 0, i32 0
  store i32* null, i32** %202, align 8
  %203 = load i32, i32* @CURLE_OK, align 4
  ret i32 %203
}

declare dso_local i64 @Curl_fnmatch(i32, i32, i8*) #1

declare dso_local i32 @Curl_set_in_callback(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @Curl_llist_insert_next(%struct.curl_llist*, i32, %struct.curl_fileinfo*, i32*) #1

declare dso_local i32 @Curl_fileinfo_cleanup(%struct.fileinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
